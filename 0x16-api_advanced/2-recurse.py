#!/usr/bin/python3
""" queries the Reddit API """
import requests


def recurse(subreddit, hot_list=[], after="", count=0):
    """ returns a list containing the titles
    of all hot articles for a given subreddit """
    url = "https://www.reddit.com/r/{}/hot/.json".format(subreddit)

    header = {
        "User-Agent": "0x16.api.advanced/v1.0.0 by Goldenthrust"
    }

    param = {
        "after": after,
        "count": count
    }

    response = requests.get(url, headers=header, params=param,
                            allow_redirects=False)

    if response.status_code != 200:
        return None

    results = response.json().get("data")

    after = res.get("after")
    count += results.get("dist")

    try:
        for res in results.get("children"):
            hot_list.append(res.get("data").get("title"))
    except Exception:
        return None

    if after is not None:
        return recurse(subreddit, hot_list, after, count)

    return hot_list
