import os
import stat

def is_readable_by_others(path):
    try:
        st = os.stat(path)
        return bool((st.st_mode & stat.S_IRGRP) or (st.st_mode & stat.S_IROTH))
    except:
        print "Error: Exception stat-ing file %s" % path
        return True

def get_user(account):
    user = get_data(account).split("|", 2)[0].strip()
    #print user
    return user

def get_passwd(account):
    passwd = get_data(account).split("|", 2)[1].strip()
    #print passwd
    return passwd

def get_data(account):
    user = os.getenv("USER")
    account = os.path.basename(account)
    path = "/home/%s/.passwd/%s.txt" % (user, account)
    if is_readable_by_others(path):
        print "Error: %s is readable by users other than %s" % (path, user)
        return ""
    with open(path, "r") as f:
        return f.readline().strip()

if __name__ == "__main__":
    print get_passwd("personal-remote")
    print get_user("personal-remote")
