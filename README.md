# CS50 SQL Coursework

This repository contains my solutions and exercises for CS50’s Introduction to Databases with SQL.

Most folders are practice problem sets and short SQL tasks. The only section documented in detail below is the final project.

## Repository at a glance

- `atl/`, `bnb/`, `census/`, `connect/`, `cyberchase/`, `dese/`, `donuts/`, `harvard/`, `meteorites/`, `moneyball/`, `packages/`, `players/`, `private/`, `snap/`, `views/`: SQL exercises and query practice.
- `deep/`: written answers.
- `dont-panic/`, `dont-panic-python/`: recovery challenge in SQL/Python.
- `final-project/`: complete database project (detailed below).

## Final Project: Football Match Ticketing Database

A SQLite-based ticketing system for football matches. It models stadiums, zones, matches, and tickets, and includes basic purchase/validation scripts.

### Features

- Track stadiums and seating zones
- List available matches
- Issue tickets by match + zone
- Validate ticket entry (single-use tickets)
- Query ticket sales and availability

### Tech

- SQLite
- SQL
- Python (`sqlite3`)

### Project files

- `final-project/schema.sql` — tables, indexes, and view definitions
- `final-project/queries.sql` — sample inserts and typical user queries
- `final-project/buy.py` — interactive script to buy/generate a ticket
- `final-project/use.py` — interactive script to mark ticket as used
- `final-project/DESIGN.md` — design notes and scope

### Quick start

From the repository root:

```bash
cd final-project
sqlite3 project.db < schema.sql
sqlite3 project.db < queries.sql
python3 buy.py
python3 use.py
```

### Data model (summary)

- `stadiums`: stadium metadata (name, capacity, city)
- `zones`: seating zones per stadium with capacity and zone price
- `matches`: scheduled matches with stadium and date
- `tickets`: issued tickets linked to zone, match, and stadium, with usage status

### Notes

- `available_matches` view returns matches where ticket sales are still open (`ended = 0`).
- Indexes on `home_team`, `away_team`, and `match_date` improve common search patterns.

---

For a detailed design document, see `final-project/DESIGN.md`.