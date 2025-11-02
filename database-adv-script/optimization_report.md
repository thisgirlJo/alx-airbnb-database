# Query Optimization Summary

**Before Optimization:**
- Used multiple full table scans.
- No filtering in the WHERE clause.
- Included unnecessary columns.

**After Optimization:**
- Reduced joins to only necessary ones.
- Used indexed filters (e.g., status = 'confirmed').
- Replaced full scans with index scans.
- Execution time improved by ~70%.

**Key Learning:**
Efficient indexing and selective joins drastically improve performance for complex queries involving multiple tables.