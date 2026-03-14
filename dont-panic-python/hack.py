from cs50 import SQL

db = SQL("sqlite:///dont-panic.db")
password = input("Enter a password: ")
db.execute(
    """
    UPDATE "users"
    SET "password" = ?
    WHERE "username" = 'admin';
    """,
    password
)
db.execute(
    """
    DELETE FROM "users_logs"
    WHERE "old_username" = 'admin'
    ;
    """
)
db.execute(
    """
    INSERT INTO "user_logs" ("type","old_username","new_username","old_password","new_password")
    VALUES ('update','admin','admin','e10adc3949ba59abbe56e057f20f883e',(SELECT "password" FROM "users" WHERE "username" = 'emily33'));
    """,
    password
)
print("Hacked!")
