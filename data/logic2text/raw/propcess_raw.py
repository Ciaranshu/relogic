# this file is to transform the origin data of Logic2text into the spider style
# i.e. modify 2 fields: logic_str -> query, sent -> question
import json
cata = 'train'
path = './{}_origin.json'.format(cata)
target = './{}.json'.format(cata)

def load_json(path):
    with open(path, 'r', encoding='utf-8') as file:
        data = file.read()
    return json.loads(data)

def write_json(path, data):
    with open(path,'w') as file:
        json.dump(data, file)

if __name__ == '__main__':
    dataset = load_json(path)
    new_dataset = []
    for origin_dict in dataset:
        origin_dict['query'] = origin_dict['logic_str']
        origin_dict['question'] = origin_dict['sent']
        new_dataset.append(origin_dict)
    write_json(target, new_dataset)

