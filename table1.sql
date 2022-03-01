CREATE UNIQUE INDEX mark_ix_1 ON marking_sample.mark(exam, stud);

ALTER TABLE marking_sample.mark
ADD CONSTRAINT student_mark
FOREIGN KEY (stud) REFERENCES marking_sample.student(id);

ALTER TABLE marking_sample.mark
ADD CONSTRAINT exam_mark FOREIGN KEY (exam) REFERENCES marking_sample.exam(id);

ALTER TABLE marking_sample.exam
ADD CONSTRAINT discipline_exam FOREIGN KEY (discip) REFERENCES marking_sample.discipline(id);