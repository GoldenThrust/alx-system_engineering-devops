#!/usr/bin/python3
""" returns information about his/her TODO list progress. """
import json
import requests as rq
import sys


if __name__ == "__main__":
    url = 'https://jsonplaceholder.typicode.com'
    users_resp = rq.get("{}/users".format(url))

    if users_resp.status_code == 200:
        users_data = users_resp.json()

        with open("todo_all_employees.json", "w") as jsonfile:
            json.dump({
                users.get("id"): [{
                    "task": task.get("title"),
                    "completed": users.get("completed"),
                    "username": users.get("username")}
                    for task in rq.get("{}/todos?userId={}"
                                       .format(url,
                                               users.get("id"))).json()]
                for users in users_data}, jsonfile)
