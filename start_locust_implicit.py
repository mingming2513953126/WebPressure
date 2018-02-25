import os,re,sys,subprocess,webbrowser

def replace_url(url):
	dir_path = os.path.dirname(os.path.abspath(__file__))
	locust_file_path = os.path.join(dir_path,"locust_test.py")
	with open(locust_file_path,"r") as locust_file:
		content = locust_file.read()
		searchObj = re.search( r'\"(.*)*\"', content, re.M|re.I)
		content = content.replace(searchObj.group(),"\""+url+"\"")
	open(locust_file_path,"w").write(content)

if __name__ == '__main__':
	replace_url(sys.argv[2])
	subprocess.Popen('locust -f .\locust_test.py --host='+sys.argv[1]+' --no-web -c '+sys.argv[3]+' -r '+sys.argv[4]+' -n '+sys.argv[5], shell=True)
