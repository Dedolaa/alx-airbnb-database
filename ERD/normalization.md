# Airbnb Database Normalization Report

## Objective
To apply normalization principles and ensure the Airbnb database schema is in **Third Normal Form (3NF)**.

---

## First Normal Form (1NF)

- All attributes contain atomic values.
- No repeating groups.
- Each row is uniquely identified by a primary key.

✅ The database design satisfies 1NF.

---

## Second Normal Form (2NF)

- All tables are in 1NF.
- All non-key attributes are fully dependent on the entire primary key.
- No partial dependencies exist as all primary keys are atomic (not composite).

✅ The database design satisfies 2NF.

---

## Third Normal Form (3NF)

- All tables are in 2NF.
- There are no transitive dependencies:
  - No non-key attribute is dependent on another non-key attribute.
  - Attributes are only dependent on the primary key.

✅ The database design satisfies 3NF.

---

## Conclusion

The current schema is well-structured and adheres to the rules of 1NF, 2NF, and 3NF. No modifications are required to achieve 3NF. Each table contains only necessary, non-redundant data with well-defined relationships and constraints.
