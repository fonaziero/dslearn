INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Alex Green', 'alexGreen@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_uri, img_gray_uri) VALUES ('BootCamp Html', 'https://eucontador.com.br/wp-content/uploads/2019/10/Cursos-Online.png', 'https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-10-28T03:00:00.00Z', TIMESTAMP WITH TIME ZONE '2023-10-29T03:00:00.00Z', 1);
INSERT INTO tb_offer (edition, start_moment, end_moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2022-11-28T03:00:00.00Z', TIMESTAMP WITH TIME ZONE '2023-12-29T03:00:00.00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso ' , 1 , 'https://eucontador.com.br/wp-content/uploads/2019/10/Cursos-Online.png' , 1, 1 );
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas duvidas ' , 2 , 'https://eucontador.com.br/wp-content/uploads/2019/10/Cursos-Online.png' , 2, 1 );
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma ' , 3 , 'https://eucontador.com.br/wp-content/uploads/2019/10/Cursos-Online.png' , 0, 1 );

INSERT INTO tb_section (title, description, position, img_Uri, resource_id , prerequisite_id) VALUES ('Capitulo 1', 'Neste capitulo vamos começar' , 1 , 'https://eucontador.com.br/wp-content/uploads/2019/10/Cursos-Online.png', 1 , null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id , prerequisite_id) VALUES ('Capitulo 2', 'Neste capitulo vamos continuar' , 2 , 'https://eucontador.com.br/wp-content/uploads/2019/10/Cursos-Online.png', 1 , 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id , prerequisite_id) VALUES ('Capitulo 3', 'Neste capitulo vamos finalizar' , 3 , 'https://eucontador.com.br/wp-content/uploads/2019/10/Cursos-Online.png', 1 , 2);

INSERT INTO	tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, avalable, only_Update ) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-10-29T03:00:00.00Z', null, true, false );
INSERT INTO	tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, avalable, only_Update ) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-10-29T03:00:00.00Z', null, true, false );
