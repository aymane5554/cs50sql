CREATE INDEX "search_enrollments_by_course_id" ON "enrollments" ("course_id");
CREATE INDEX "search_enrollments_by_student_id" ON "enrollments" ("student_id");
CREATE INDEX "search_courses" ON "courses" ("department","number","semester");
CREATE INDEX "search_satisfies" ON "satisfies" ("course_id");
CREATE INDEX "search_courses_by_semester" ON "courses" ("semester");
CREATE INDEX "search_courses_by_semester_title" ON "courses" ("semester","title");
