CREATE TABLE "muscular_groups"(
    "muscular_group" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "muscular_groups" ADD PRIMARY KEY("muscular_group");
CREATE TABLE "exercise_muscular_groups"(
    "exercise_id" VARCHAR(255) NOT NULL,
    "muscular_group" VARCHAR(255) NOT NULL
);
CREATE INDEX "exercise_muscular_groups_exercise_id_index" ON
    "exercise_muscular_groups"("exercise_id");
CREATE INDEX "exercise_muscular_groups_muscular_group_index" ON
    "exercise_muscular_groups"("muscular_group");
CREATE TABLE "workout_exercises"(
    "workout_id" VARCHAR(255) NOT NULL,
    "exercise_id" VARCHAR(255) NOT NULL,
    "series" INTEGER NOT NULL,
    "repetitions" INTEGER NOT NULL,
    "time" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "position" INTEGER NOT NULL
);
CREATE INDEX "workout_exercises_workout_id_index" ON
    "workout_exercises"("workout_id");
CREATE INDEX "workout_exercises_exercise_id_index" ON
    "workout_exercises"("exercise_id");
CREATE TABLE "users"(
    "user_id" VARCHAR(255) NOT NULL,
    "username" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "hashed_password" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "users" ADD PRIMARY KEY("user_id");
CREATE TABLE "workouts"(
    "workout_id" VARCHAR(255) NOT NULL,
    "date" DATE NOT NULL,
    "user_id" VARCHAR(255) NOT NULL,
    "public" BOOLEAN NOT NULL,
    "official" BOOLEAN NOT NULL,
    "workout_name" VARCHAR(255) NOT NULL,
    "series_rest" TIME(0) WITHOUT TIME ZONE NOT NULL,
    "reps_rest" TIME(0) WITHOUT TIME ZONE NOT NULL
);
ALTER TABLE
    "workouts" ADD PRIMARY KEY("workout_id");
CREATE INDEX "workouts_user_id_index" ON
    "workouts"("user_id");
CREATE TABLE "exercises"(
    "exercise_id" VARCHAR(255) NOT NULL,
    "difficulty" VARCHAR(255) NOT NULL,
    "type" VARCHAR(255) NOT NULL,
    "user_id" VARCHAR(255) NOT NULL,
    "public" BOOLEAN NOT NULL,
    "official" BOOLEAN NOT NULL,
    "exercise_name" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "exercises" ADD PRIMARY KEY("exercise_id");
CREATE INDEX "exercises_user_id_index" ON
    "exercises"("user_id");
ALTER TABLE
    "exercise_muscular_groups" ADD CONSTRAINT "exercise_muscular_groups_exercise_id_foreign" FOREIGN KEY("exercise_id") REFERENCES "exercises"("exercise_id");
ALTER TABLE
    "exercise_muscular_groups" ADD CONSTRAINT "exercise_muscular_groups_muscular_group_foreign" FOREIGN KEY("muscular_group") REFERENCES "muscular_groups"("muscular_group");
ALTER TABLE
    "workouts" ADD CONSTRAINT "workouts_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "users"("user_id");
ALTER TABLE
    "workout_exercises" ADD CONSTRAINT "workout_exercises_exercise_id_foreign" FOREIGN KEY("exercise_id") REFERENCES "exercises"("exercise_id");
ALTER TABLE
    "exercises" ADD CONSTRAINT "exercises_user_id_foreign" FOREIGN KEY("user_id") REFERENCES "users"("user_id");
ALTER TABLE
    "workout_exercises" ADD CONSTRAINT "workout_exercises_workout_id_foreign" FOREIGN KEY("workout_id") REFERENCES "workouts"("workout_id");