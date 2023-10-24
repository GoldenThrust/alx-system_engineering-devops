#!/usr/bin/python3
""" returns information about his/her TODO list progress. """
import requests as rq
import sys


if __name__ == "__main__":
    url = 'https://jsonplaceholder.typicode.com/'
    users_resp = rq.get("{}/users/{}".format(url, sys.argv[1]))
    todo_resp = rq.get("{}/todos?userId={}".format(url, sys.argv[1]))

    if users_resp.status_code == 200 and todo_resp.status_code == 200:
        users_data = users_resp.json().get("name")
        todo_data = todo_resp.json()

        tasks_done = [dict.get("title")
                      for dict in todo_data if dict.get("completed")]

        print("Employee {} is done with tasks({}/{}):".format(
                users_data, len(tasks_done), len(todo_data)))
        for task in tasks_done:
            print("\t {}".format(task))
