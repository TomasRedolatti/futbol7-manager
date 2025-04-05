# 🏆 Sistema de Gestión de Torneos de Fútbol 7

Este proyecto es una API REST construida con Spring Boot que permite gestionar torneos de fútbol 7. Incluye funcionalidades para administrar jugadores, equipos y torneos, así como sus relaciones.

## ⚙️ Tecnologías utilizadas

- Java 17
- Spring Boot
- Spring Data JPA
- H2 / MySQL (H2 utilizada para testing)
- Maven
- Swagger / Springdoc OpenAPI

## 📐 Diseño del sistema

### Entidades principales

- **Jugador**: tiene nombre, DNI, posición (arquero, defensa, mediocampo, delantera), y pertenece a un único equipo.
- **Equipo**: tiene nombre, un DT, puede representar a una firma, y está compuesto por hasta 11 jugadores (7 titulares, 3 suplentes, 1 arquero).
- **Torneo**: posee un nombre e incluye una cantidad prefijada de equipos.

### Diagramas

📁 Ver carpeta [`diagramas/`](./diagramas) para:
- Diagrama de clases
- DER
- Esquema relacional

## 📦 Estructura del proyecto

- `controller/` → Exposición de endpoints
- `service/` → Lógica de negocio
- `model/` → Entidades JPA
- `repository/` → Repositorios JPA
- `dto/` → Objetos de transferencia
- `config/` → Configuración general

## 🚀 Cómo correr el proyecto

```bash
git clone https://github.com/TomasRedolatti/futbol7-manager.git
cd futbol7-manager
./mvnw spring-boot:run
