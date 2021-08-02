import os, stat
import json
import random
from config import *
from collections import defaultdict

random.seed(33)
logic2textidx = []
spideridx = []
outdomainidx = []
for i in range(0, 1032):
    spideridx.append(i)
for i in range(0, 1092):
    logic2textidx.append(i)
for i in range(0, 1659):
    outdomainidx.append(i)                    
logic2textidx = random.sample(logic2textidx, 90)
spideridx = random.sample(spideridx, 90)
outdomainidx = random.sample(outdomainidx, 90)

def create_dir(path):
    if not os.path.exists(path):
        os.makedirs(path)
        os.chmod(path, stat.S_IRWXU + stat.S_IRWXO + stat.S_IRWXG)

def read_json(path):
    f = open(path, "r", encoding="utf-8")
    content = json.load(f)
    f.close()
    return content

def read_scjson(path):
    f = open(path, "r", encoding="utf-8")
    lines = f.readlines()
    f.close()
    content = []
    for line in lines:
        item = json.loads(line)
        content.append(item)
    return content

def write_json(path, data):
    flag = 0
    if not os.path.exists(path):
        flag = 1
    f = open(path, "w", encoding="utf-8")
    f.write(json.dumps(data, indent=4))
    f.close()
    if flag == 1:
        os.chmod(path, stat.S_IRWXU + stat.S_IRWXO + stat.S_IRWXG)

def create_samplejson(files, filespath, outpath):
    for f in files:
        if 'multitask' in filespath or 'spider' in filespath:
            content = read_scjson(os.path.join(filespath, f))
        elif 'logic2text' in filespath:
            content = read_json(os.path.join(filespath, f))
        else:
            print(filespath + " wrong!")
        samplecontent = []
        if 'spider' in filespath:
            if 'out_domain' in filespath:
                for i in outdomainidx:
                    samplecontent.append(content[i])
            else:
                for i in spideridx:
                    samplecontent.append(content[i])
        elif 'logic2text' in filespath:
            for i in logic2textidx:
                samplecontent.append(content[i])
        else:
            print(filespath + " wrong!")
        #samplecontent = random.sample(content, 50)
        one = samplecontent[:50]
        two = samplecontent[40:]
        #one = samplecontent
        #two = samplecontent
        write_json(os.path.join(outpath, Onejson), one)
        write_json(os.path.join(outpath, Twojson), two)

def sample_data():
    print("prepare data......")
    dxysampledir = os.path.join(Dxypath, Sampledir)
    create_dir(dxysampledir)
    create_dir(dxysampledir.replace(Sampledir, Evaluation))
    saves = os.listdir(Scpath)

    statuspath = os.path.join(Dxypath, Status)
    if not os.path.exists(statuspath):
        write_json(statuspath, {})
    status = read_json(statuspath)

    for savedir in saves:
        if not Label[0] in savedir and not Label[1] in savedir: #and not Label[2] in savedir:
            continue
        dxysampledirpath = os.path.join(dxysampledir, savedir)
        create_dir(dxysampledirpath)
        create_dir(dxysampledirpath.replace(Sampledir, Evaluation))
        dxygeneratorpath = os.path.join(dxysampledirpath, Generatordir)
        create_dir(dxygeneratorpath)
        create_dir(dxygeneratorpath.replace(Sampledir, Evaluation))
        scsavedir = os.path.join(Scpath, savedir)
        scgeneratorpath = os.path.join(scsavedir, Generatordir)
        dirs = os.listdir(scgeneratorpath)
        #for i in dirs:
        for i in Epochs:
            dxyepochpath = os.path.join(dxygeneratorpath, str(i))
            create_dir(dxyepochpath)
            create_dir(dxyepochpath.replace(Sampledir, Evaluation))
            dxyoutpath = os.path.join(dxyepochpath, Outofdomaindir)
            create_dir(dxyoutpath)
            create_dir(dxyoutpath.replace(Sampledir, Evaluation))
            dxytestpath = os.path.join(dxyepochpath, Testdir)
            create_dir(dxytestpath)
            create_dir(dxytestpath.replace(Sampledir, Evaluation))
            scepochpath = os.path.join(scgeneratorpath, str(i))
            scoutpath = os.path.join(scepochpath, Outofdomaindir)
            sctestpath = os.path.join(scepochpath, Testdir)
            #if os.path.exists(dxyoutpath) and os.path.exists(dxytestpath):
            #    continue
            #else:
            #    create_dir(dxyoutpath)
            #    create_dir(dxytestpath)
            try:
                scouts = os.listdir(scoutpath)
                create_samplejson(scouts, scoutpath, dxyoutpath)
                if dxyoutpath not in status:
                    status[dxyoutpath] = []
            except:
                pass
                #print("{} lack out_of_domain".format(scepochpath))
            
            try:
                sctests = os.listdir(sctestpath)
                create_samplejson(sctests, sctestpath, dxytestpath)
                if dxytestpath not in status:
                    status[dxytestpath] = []
            except:
                pass
                #print("{} lack test".format(scepochpath))

    write_json(statuspath, status)
    print("finish preparing!")

def read_unfinish(path):
    flag = 0
    if not os.path.exists(path):
        flag = 1
    f = open(path, "r", encoding="utf-8")
    lines = f.readlines()
    f.close()
    unfinishpath = []
    for line in lines:
        unfinishpath.append(line.strip())
    index = lines[-1].strip()
    if flag == 1:
        os.chmod(path, stat.S_IRWXU + stat.S_IRWXO + stat.S_IRWXG)
    return unfinishpath[:-1], int(index)

def write_unfinish(path, unfinishpath, index):
    f = open(path, "w", encoding="utf-8")
    for p in unfinishpath:
        f.write(p + "\n")
    f.write(str(index))
    f.close()
    flag = 0
    if not os.path.exists(path):
        flag = 1
    if flag == 1:
        os.chmod(path, stat.S_IRWXU + stat.S_IRWXO + stat.S_IRWXG)

def label_data(path, index, unfinishfile, spidertests, logic2texttests, domains):
    output = defaultdict(list)
    jsonpaths = []
    for item in path:
        jsonfile = item.split("/")[-1]
        jsondir = item.split("/")[:-1]
        jsondir[4] = Evaluation
        jsondir = "/".join(jsondir)
        jsonpath = os.path.join(jsondir, jsonfile)
        jsonpaths.append(jsonpath)
        if os.path.exists(jsonpath):
            output[jsonpath] = read_json(jsonpath)
        else:
            create_dir(jsondir)
    content = {}
    datalen = 0
    for item in path:
        jsonfile = item.split("/")[-1]
        jsondir = item.split("/")[:-1]
        jsondir[4] = Evaluation
        jsondir = "/".join(jsondir)
        jsonpath = os.path.join(jsondir, jsonfile)
        content[jsonpath] = read_json(item)
        datalen = len(content[jsonpath])

    check = path[0].split("/")[-2]
    #for i in range(datalen):
    i = index
    while(i < datalen):

        for jsonpath in jsonpaths:
            write_json(jsonpath, output[jsonpath])
        write_unfinish(unfinishfile, path, i)

        print("--------------------------------------")
        print("index: {}".format(i))
        idx = ""
        label = ""
        sql = ""
        pred = []
        for key in content:
            idx = content[key][i]["idx"]
            label = content[key][i]["label"]
            if check in Testjson1.split(".")[0]:
                if 'spider' in key:
                    sql = spidertests[int(idx)]
                elif 'logic2text' in key:
                    sql = logic2texttests[int(idx)]
            elif check == Domainjson.split(".")[0]:
                sql = domains[int(idx)]
            pred.append(content[key][i]["pred"])
        print("SQL: {}".format(sql))
        print("label: {}".format(label))
        evaluations = []
        for j, item in enumerate(pred):
            print("pred {}: {}".format(j + 1, item))
            evaluation = input("please input number (0 for wrong, 1 for right)")
            while (not evaluation in ["0", "1"]):
                evaluation = input("please input number (0 for wrong, 1 for right)")
            evaluations.append(evaluation)
        items = {}
        for j, key in enumerate(output):
            items[key] = {"idx": idx, "logic": sql, "pred": pred[j], "label": label, Evaluation: evaluations[j]}
            #output[key].append(item)

        judge = input("save or continue (0 for save, 1 for continue, 2 for relabel)")
        while (not judge in ["0", "1", "2"]):
            judge = input("save or continue (0 for save, 1 for continue, 2 for relabel)")
        if judge == "0" or judge == "1":
            for key in items:
                output[key].append(items[key])
        else:
            i -= 1
        if judge == "0":
            for jsonpath in jsonpaths:
                write_json(jsonpath, output[jsonpath])
            write_unfinish(unfinishfile, path, i + 1)
            exit(0)

        i += 1
    """for item in enumerate(content):
        if i < index:
            continue
        if not i == 0 and i % 5 == 0:
            write_json(jsonpath, output)
            write_unfinish(unfinishfile, path, len(output))
        print("--------------------------------------")
        print("index: {}".format(i))
        idx = item["idx"]
        pred = item["pred"]
        label = item["label"]
        #print("idx: {}".format(idx))
        print("pred: {}".format(pred))
        print("label: {}".format(label))
        if check in Testjson1.split(".")[0]:
            if 'spider' in path:
                print("SQL: {}".format(spidertests[int(idx)]))
            elif 'logic2text' in path:
                print("SQL: {}".format(logic2texttests[int(idx)]))
            else:
                print("wrong idx!")
        elif check == Domainjson.split(".")[0]:
            print("SQL: {}".format(domains[int(idx)]))
        evaluation = input("please input number (0 for wrong, 1 for right, 2 for save and quit)")
        while(not evaluation in ["0", "1", "2"]):
            evaluation = input("please input number (0 for wrong, 1 for right, 2 for save and quit)")
        if not evaluation == "2":
            item[Evaluation] = evaluation
            output.append(item)
        else:
            write_json(jsonpath, output)
            write_unfinish(unfinishfile, path, len(output))
            exit(0)"""

    for jsonpath in jsonpaths:
        write_json(jsonpath, output[jsonpath])
    write_unfinish(unfinishfile, path, datalen)


def prepare_user():
    f = open(os.path.join(Dxypath, Testjson1), "r", encoding="utf-8")
    spidertests = json.load(f)
    f.close()
    f = open(os.path.join(Dxypath, Testjson2), "r", encoding="utf-8")
    logic2texttests = json.load(f)
    f.close()
    f = open(os.path.join(Dxypath, Domainjson), "r", encoding="utf-8")
    domains = json.load(f)
    f.close()
    user = str(__file__).split("/")[2]
    userp = os.path.join(Dxypath, Userdir)
    create_dir(userp)
    userpath = os.path.join(userp, user)
    create_dir(userpath)
    print("welcome {}".format(user))
    unfinishfile = os.path.join(userpath, Unfinish)
    if os.path.exists(unfinishfile):
        unfinishpath, index = read_unfinish(unfinishfile)
        if index < 50:
            print("last time, you have job unfinished, starts from index {}".format(index))
            label_data(unfinishpath, index, unfinishfile, spidertests, logic2texttests, domains)

    while(1):
        more = input("congrats, you do not have job now, do you want more ? (1 for more, 0 for quit)")
        if more == "0":
            break
        elif not more == "1":
            print("please input 0 or 1")
            continue

        statuspath = os.path.join(Dxypath, Status)
        status = read_json(statuspath)
        print("assign data......")

        firstfile = ""
        secondfile = ""
        datapath = []
        count = 0
        for key in status:
            if len(status[key]) >= 2:
                count += 1
                continue
            if user in status[key]:
                continue
            if firstfile == "":
                if "spider" in key:
                    firstfile = "spider"
                    if secondfile == "":
                        if "out_domain" in key:
                            secondfile = "out_domain"
                        else:
                            secondfile = "/test"
                else:
                    firstfile = "logic2text"
            if firstfile in key:
                if firstfile == "spider" and secondfile not in key:
                    continue
                status[key].append(user)
                if len(status[key]) == 1:
                    datapath.append(os.path.join(key, Onejson))
                else:
                    datapath.append(os.path.join(key, Twojson))
            if len(datapath) >= 5:
                break
        if count == len(status):
            print("all jobs are done!")
            break
        elif len(datapath) == 0:
            print("no more jobs for you, but you can remind others")
            break
        else:
            write_json(statuspath, status)
            print("finish assigning!")
        """flag = 0
        count = 0
        datapath = ""
        for key in status:
            if len(status[key]) >= 2:
                count += 1
                continue
            else:
                if user not in status[key]:
                    status[key].append(user)
                    if len(status[key]) == 1:
                        datapath = os.path.join(key, Onejson)
                    else:
                        datapath = os.path.join(key, Twojson)
                    flag = 1
                    break
        if count == len(status):
            print("all jobs are done!")
            break
        elif flag == 0:
            print("no more jobs for you, but you can remind others")
            break
        else:
            write_json(statuspath, status)
            print("finish assigning!")"""
        label_data(datapath, 0, unfinishfile, spidertests, logic2texttests, domains)
