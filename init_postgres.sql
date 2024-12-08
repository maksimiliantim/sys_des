CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);
CREATE TABLE IF NOT EXISTS budget_items (
    id UUID PRIMARY KEY,
    user_id UUID REFERENCES users(id),
    description TEXT,
    amount DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX IF NOT EXISTS idx_username ON users(username);
CREATE INDEX IF NOT EXISTS idx_user_id ON budget_items(user_id);
INSERT INTO users (id, username, password_hash) VALUES
('admin-uuid', 'admin', '$2b$12$AykJ5K/SRMoW.ePCh/4G6OeC5dB6yPGFm6Y29zMyLlFfZDAAoOSGu');