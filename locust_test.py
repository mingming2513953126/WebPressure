from locust import HttpLocust,TaskSet,task

class UserBehavior(TaskSet):
	@task()
	def test(self):
		self.client.get("/")

class WebUserLocust(HttpLocust):
	weight = 1
	task_set = UserBehavior
	min_wait = 300
	max_wait = 700