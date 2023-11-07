#!/usr/bin/python3
""" queries the Reddit API """
import requests


def count_words(subreddit, word_list, after=None, word_count=None):
    """  prints a sorted count of given keywords """
    if word_count is None:
        word_count = {}

    if after is None:
        url = "https://www.reddit.com/r/{}/hot/.json".format(
            subreddit)
    else:
        url = "https://www.reddit.com/r/{}/hot/.json?after={}".format(
            subreddit, after)

    headers = {
        "User-Agent": "0x16.api.advanced/v1.0.0 by Goldenthrust"
        }

    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code != 200:
        return word_count

    data = response.json().get("data")
    after = data.get("after")

    for post in data.get("children"):
        title = post["data"]["title"].lower()
        for word in set(word_list):
            word_count[word] = word_count.get(word, 0) + title.count(word)

    if after is None:
        if not word_count:
            print("")
        else:
            sorted_word_count = sorted(word_count.items(),
                                       key=lambda item: (-item[1], item[0]))
            for word, count in sorted_word_count:
                if count > 0:
                    print("{}: {}".format(word, count))
    else:
        return count_words(subreddit, word_list, after, word_count)
