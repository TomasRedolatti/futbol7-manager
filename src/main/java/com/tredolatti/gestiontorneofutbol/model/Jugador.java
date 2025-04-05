package com.tredolatti.gestiontorneofutbol.model;


import jakarta.persistence.*;

import java.util.Date;

@Entity
public class Jugador {
    @Id
    @Column(name="ID_Player")
    private Long id;
    @Column()
    private String name;
    @Column()
    private String lastName;
    @Column()
    private Date birthday;
    @Column
    private String position;
    @ManyToOne
    @JoinColumn(name="ID_Team")
    private Team team;
}
