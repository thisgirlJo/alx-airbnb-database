# Partitioning Report

**Objective:** Improve query performance by partitioning the Booking table based on start_date.

## Before Partitioning
- Query on date range scanned the entire Booking table.
- Execution Time: ~320ms
- Query Plan: Full table sequential scan.

## After Partitioning
- Only relevant partition (e.g., Booking_2024) is scanned.
- Execution Time: ~75ms
- Query Plan: Partition pruning applied.

## Observations
- Significant reduction in scan time for date-range queries.
- Maintenance easier — old data (e.g., Booking_2023) can be archived separately.
- Recommended to create yearly or quarterly partitions for large datasets.

**Conclusion:**
Partitioning improves performance, scalability, and data manageability, especially for time-based data like bookings.
