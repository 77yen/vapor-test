import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

    app.get("test") { req async -> String in
        "test3345678!"
    }
    
    try app.register(collection: TodoController())
}
