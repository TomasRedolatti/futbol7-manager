-- data.sql
INSERT INTO Team (name, represented_entity, head_coach) VALUES
        ('Los Tigres', 'Club Deportivo El Bosque', 'Juan Perez'),
        ('Águilas FC', 'Universidad Nacional', 'Maria Rodriguez');

INSERT INTO Player (id, name, last_name, birthday, position, team_id) VALUES
        (41356212, 'Carlos', 'Mendez', '1998-06-15', 'ARQUERO', 1),
        (42985633, 'Luis', 'Gomez', '2000-03-22', 'DEFENSA', 1);