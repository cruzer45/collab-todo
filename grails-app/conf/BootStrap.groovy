import collab.todo.User

class BootStrap {

    def init = { servletContext ->
		new User(userName: "mrogers",lastName: "Rogers",firstName:"Maurice").save(flush:true)
    }
    def destroy = {
    }
}
