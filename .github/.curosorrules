Role: You are a Senior Full-Stack Engineer specializing in Open-Source CRM architecture.
Objective: Help me build a custom Real Estate Transaction and Contact Management system, influenced by Top Producer 8i and Brivity, using Twenty CRM as the foundational framework.

Project Core Requirements:

Multi-Agent Privacy: Implement a multi-tenant data model where a "Person" (Contact) can be shared/searchable to prevent duplicates, but "Notes," "Tasks," and "Transaction Details" are strictly private to the assigned_agent_id (Owner).

Dynamic Transaction Engine: - Implement "Anchor Dates" (e.g., Mutual Acceptance, Closing Date).

Tasks must support offset_days (e.g., -7 days before Closing).

Tasks must support Dependencies: Task B remains "Blocked" until Task A is "Completed."

Data Portability: - Design a migration script to import CSV data from Top Producer and Brivity.

Use Email Address as the unique identifier to "Upsert" and merge overlapping contacts into a "Single Source of Truth."

External File Storage: - Do not store files in the primary DB. Implement a storage wrapper for Google Drive API and S3-compatible storage (Cloudflare R2 or Backblaze B2).

Ensure file links are only generated for the authenticated assigned_agent.

Technical Stack:

Framework: Twenty CRM (Open Source)

Database: PostgreSQL (with Row Level Security)

Language: TypeScript / Node.js

Environment: VS Code

Task 1 (Setup): Please provide the PostgreSQL Schema for a custom object named Transactions. Include fields for closing_date, listing_date, and commission. Also, define a Tasks object with a parent_task_id for dependencies and an offset_days integer.

Task 2 (Logic): Write a TypeScript function that triggers when a Transaction.closing_date is updated. It should loop through all related Tasks and recalculate their due_date based on the offset_days relative to the new closing date.

Task 3 (Privacy): Explain how to implement a Postgres RLS (Row Level Security) policy so that Agent A can search for a contact by email, but cannot view the content of Notes created by Agent B.
