#!/usr/bin/python3
""" returns information about his/her TODO list progress. """
import json
import requests as rq
import sys

if __name__ == "__main__":
    user_id = sys.argv[1]
    url = 'https://jsonplaceholder.typicode.com/'
    users_resp = rq.get("{}/users/{}".format(url, user_id))
    todo_resp = rq.get("{}/todos?userId={}".format(url, user_id))

    if users_resp.status_code == 200 and todo_resp.status_code == 200:
        username = users_resp.json().get("username")
        todo_data = todo_resp.json()

        with open("{}.json".format(sys.argv[1]), "w", newline="") as json_f:
            json.dump({user_id:
                       [{"task": task.get("title"),
                        "completed": task.get("completed"),
                         "username": username}
                        for task in todo_data]}, json_f)
