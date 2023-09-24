import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

    app.get("tet") { req async -> String in
        "test!"
    }
    try app.register(collection: TodoController())
}
