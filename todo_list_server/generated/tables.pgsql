--
-- Class Todo as table todo
--

CREATE TABLE "todo" (
  "id" serial,
  "todoId" text NOT NULL,
  "title" text NOT NULL,
  "description" text NOT NULL,
  "isDone" boolean NOT NULL,
  "createdAt" text,
  "updatedAt" text
);

ALTER TABLE ONLY "todo"
  ADD CONSTRAINT todo_pkey PRIMARY KEY (id);


