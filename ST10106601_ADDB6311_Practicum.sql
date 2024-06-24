CREATE TABLE INSTRUCTOR(
INS_ID NUMBER PRIMARY KEY NOT NULL,
INS_FNAME VARCHAR2(20) NOT NULL,
INS_SNAME VARCHAR2(20) NOT NULL,
INS_CONTACT NUMBER NOT NULL,
INS_LEVEL NUMBER NOT NULL
);
Select * from INSTRUCTOR;

CREATE TABLE CUSTOMER(
CUST_ID VARCHAR2(10) PRIMARY KEY NOT NULL,
CUST_FNAME VARCHAR2(20) NOT NULL,
CUST_SNAME VARCHAR2(20) NOT NULL,
CUST_ADDRESS  VARCHAR2(50) NOT NULL,
CUST_CONTACT NUMBER NOT NULL
);
Select * from CUSTOMER;

CREATE TABLE DIVE(
DIVE_ID NUMBER PRIMARY KEY NOT NULL,
DIVE_NAME VARCHAR2(20) NOT NULL,
DIVE_DURATION VARCHAR2(20) NOT NULL,
DIVE_LOCATION  VARCHAR2(20) NOT NULL,
DIVE_EXP_LEVEL NUMBER NOT NULL,
DIVE_COST NUMBER NOT NULL
);
Select * from DIVE;

CREATE TABLE DIVE_EVENT(
DIVE_EVENT_ID VARCHAR2(20) PRIMARY KEY NOT NULL,
DIVE_DATE DATE NOT NULL,
DIVE_PARTICIPANTS NUMBER NOT NULL,
INS_ID NUMBER NOT NULL,
CUST_ID VARCHAR2(10)  NOT NULL,
DIVE_ID NUMBER  NOT NULL,
FOREIGN KEY (INS_ID) REFERENCES INSTRUCTOR(INS_ID),
FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER(CUST_ID),
FOREIGN KEY (DIVE_ID) REFERENCES DIVE(DIVE_ID)
);
Select * from DIVE_EVENT;

INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(101, 'James', 'Willis', 0843569851, 7);
INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(102, 'Sam', 'Wait', 076369851, 2);
INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(103, 'Sally', 'Gumede', 0786598521, 8);
INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(104, 'Bob', 'Du Preez', 0796369857, 3);
INSERT INTO INSTRUCTOR (INS_ID, INS_FNAME, INS_SNAME, INS_CONTACT, INS_LEVEL) VALUES
(105, 'Simon', 'Jones', 0826598741, 9);
SELECT * FROM INSTRUCTOR;

INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C115', 'Heinrich', 'Willis', '3 Main Road', 0821253659);
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C116', 'David', 'Watson', '13 Cape Road', 0769658547);
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C117', 'Waldo', 'Smith', '3 Mountain Road', 0863256574);
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C118', 'Alex', 'Hanson', '8 Circle Road', 0762356587);
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C119', 'Kuhle', 'Bitterhout', '15 Main Road', 08212335258);
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C120', 'Thando', 'Zolani', '88 Summer Road', 0847541254);
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C121', 'Philip', 'Jackson', '3 Long Road', 0745556658);
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C122', 'Sarah', 'Jones', '7 Sea Road', 0814745745);
INSERT INTO CUSTOMER (CUST_ID, CUST_FNAME, CUST_SNAME, CUST_ADDRESS, CUST_CONTACT) VALUES
('C123', 'Catherine', 'Howard', '31 Lake Side Road', 0822232521);
SELECT * FROM CUSTOMER;

INSERT INTO DIVE (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(550, 'Shark Drive', '3 hours', 'Shark Point', 8, 500);
INSERT INTO DIVE  (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(551, 'Coral Drive', '1 hour', 'Break Point', 7, 300);
INSERT INTO DIVE  (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(552, 'Wave Crescent', '2 hours', 'Ship Wreck ally', 3, 800);
INSERT INTO DIVE  (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(553, 'Underwater Exploration', '1 hour', 'Coral ally', 2, 250);
INSERT INTO DIVE  (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(554, 'Underwater Adventure', '3 hours', 'Sandy Beach', 3, 750);
INSERT INTO DIVE  (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(555, 'Deep Blue Ocean', '30 minutes', 'Lazy Waves', 2, 120);
INSERT INTO DIVE  (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(556, 'Rough Seas', '1 hour', 'Pipe', 9, 700);
INSERT INTO DIVE  (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(557, 'White Water', '2 hours', 'Drifts', 5, 200);
INSERT INTO DIVE  (DIVE_ID, DIVE_NAME, DIVE_DURATION, DIVE_LOCATION, DIVE_EXP_LEVEL, DIVE_COST) VALUES
(558, 'Current Adventure', '2 hours', 'Rock Lands', 3, 150);
SELECT * FROM DIVE;


INSERT INTO DIVE_EVENT  (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_101', TO_DATE('2017-07-15', 'YYYY-MM-DD'), 5, 103, 'C115', 558);
INSERT INTO DIVE_EVENT  (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_102', TO_DATE('2017-07-16', 'YYYY-MM-DD'), 7, 102, 'C117', 555);
INSERT INTO DIVE_EVENT  (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_103', TO_DATE('2017-07-18', 'YYYY-MM-DD'), 8, 104, 'C118', 552);
INSERT INTO DIVE_EVENT  (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_104', TO_DATE('2017-07-19', 'YYYY-MM-DD'), 3, 101, 'C119', 551);
INSERT INTO DIVE_EVENT  (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_105', TO_DATE('2017-07-21', 'YYYY-MM-DD'), 5, 104, 'C121', 558);
INSERT INTO DIVE_EVENT  (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_106', TO_DATE('2017-07-22', 'YYYY-MM-DD'), 8, 105, 'C120', 556);
INSERT INTO DIVE_EVENT  (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_107', TO_DATE('2017-07-25', 'YYYY-MM-DD'), 10, 105, 'C115', 554);
INSERT INTO DIVE_EVENT  (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_108', TO_DATE('2017-07-27', 'YYYY-MM-DD'), 5, 101, 'C122', 552);
INSERT INTO DIVE_EVENT  (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID) VALUES
('de_109', TO_DATE('2017-07-28', 'YYYY-MM-DD'), 3, 102, 'C123', 553);
SELECT * FROM DIVE_EVENT;


---QUESTION 2
-- 1. Create User Roles
CREATE ROLE ADMIN_USER_ROLE;
CREATE ROLE GENERAL_USER_ROLE;

-- 2. Grant Privileges to Each Role
-- Admin User Role Privileges
GRANT SELECT, INSERT, UPDATE, DELETE ON INSTRUCTOR TO ADMIN_USER_ROLE;
GRANT SELECT, INSERT, UPDATE, DELETE ON CUSTOMER TO ADMIN_USER_ROLE;
GRANT SELECT, INSERT, UPDATE, DELETE ON DIVE TO ADMIN_USER_ROLE;
GRANT SELECT, INSERT, UPDATE, DELETE ON DIVE_EVENT TO ADMIN_USER_ROLE;
GRANT CREATE USER TO ADMIN_USER_ROLE;
GRANT DROP USER TO ADMIN_USER_ROLE;
GRANT ALTER USER TO ADMIN_USER_ROLE;
GRANT CREATE ROLE TO ADMIN_USER_ROLE;
GRANT GRANT ANY PRIVILEGE TO ADMIN_USER_ROLE;

-- General User Role Privileges
GRANT SELECT ON INSTRUCTOR TO GENERAL_USER_ROLE;
GRANT SELECT ON CUSTOMER TO GENERAL_USER_ROLE;
GRANT SELECT ON DIVE TO GENERAL_USER_ROLE;
GRANT SELECT ON DIVE_EVENT TO GENERAL_USER_ROLE;
GRANT INSERT ON DIVE_EVENT TO GENERAL_USER_ROLE;

-- 3. Create Users and Assign Roles
CREATE USER admin_user IDENTIFIED BY admin_password;
GRANT ADMIN_USER_ROLE TO admin_user;

CREATE USER general_user IDENTIFIED BY general_password;
GRANT GENERAL_USER_ROLE TO general_user;


--Question 3
SELECT 
    I.INS_FNAME || ' ' || I.INS_SNAME AS Instructor_Name,
    C.CUST_FNAME || ' ' || C.CUST_SNAME AS Customer_Name,
    D.DIVE_LOCATION,
    DE.DIVE_PARTICIPANTS
FROM 
    DIVE_EVENT DE
    JOIN INSTRUCTOR I ON DE.INS_ID = I.INS_ID
    JOIN CUSTOMER C ON DE.CUST_ID = C.CUST_ID
    JOIN DIVE D ON DE.DIVE_ID = D.DIVE_ID
WHERE 
    DE.DIVE_PARTICIPANTS BETWEEN 8 AND 10;
    
    
    
---QUESTION 4
DECLARE
    CURSOR dive_event_cursor IS
        SELECT 
            D.DIVE_NAME,
            TO_CHAR(DE.DIVE_DATE, 'DD/MON/YY') AS DIVE_DATE,
            DE.DIVE_PARTICIPANTS
        FROM 
            DIVE_EVENT DE
            JOIN DIVE D ON DE.DIVE_ID = D.DIVE_ID
        WHERE 
            DE.DIVE_PARTICIPANTS >= 10;

    -- Define variables to hold cursor data
    v_dive_name       VARCHAR2(50);
    v_dive_date       VARCHAR2(20);
    v_participants    NUMBER;

BEGIN
    -- Open the cursor and fetch each row
    FOR dive_event_record IN dive_event_cursor LOOP
        -- Assign the values to variables
        v_dive_name := dive_event_record.DIVE_NAME;
        v_dive_date := dive_event_record.DIVE_DATE;
        v_participants := dive_event_record.DIVE_PARTICIPANTS;

        -- Display the result in the desired format
        DBMS_OUTPUT.PUT_LINE('DIVE NAME: ' || v_dive_name);
        DBMS_OUTPUT.PUT_LINE('DIVE DATE: ' || v_dive_date);
        DBMS_OUTPUT.PUT_LINE('PARTICIPANTS: ' || v_participants);
        DBMS_OUTPUT.PUT_LINE('----------------------------------');
    END LOOP;
END;
/
SET SERVEROUTPUT ON;


---Question 5
DECLARE
    --cursor to fetch required data for customer "Alex Hanson"
    CURSOR dive_event_cursor IS
        SELECT 
            C.CUST_FNAME || ', ' || C.CUST_SNAME AS Customer_Name,
            D.DIVE_NAME,
            DE.DIVE_PARTICIPANTS,
            D.DIVE_COST
        FROM 
            DIVE_EVENT DE
            JOIN CUSTOMER C ON DE.CUST_ID = C.CUST_ID
            JOIN DIVE D ON DE.DIVE_ID = D.DIVE_ID
        WHERE 
            D.DIVE_COST > 500
            AND C.CUST_FNAME = 'Alex' 
            AND C.CUST_SNAME = 'Hanson';
    
    --variables to hold cursor data
    v_customer_name   VARCHAR2(50);
    v_dive_name       VARCHAR2(50);
    v_participants    NUMBER;
    v_instructors     NUMBER;
    v_cost            NUMBER;

    -- To track if any rows are found
    row_found BOOLEAN := FALSE;

BEGIN
    -- Open the cursor and fetch each row
    FOR dive_event_record IN dive_event_cursor LOOP
        -- Mark that at least one row was fetched
        row_found := TRUE;

        -- Assign the values to variables
        v_customer_name := dive_event_record.Customer_Name;
        v_dive_name := dive_event_record.DIVE_NAME;
        v_participants := dive_event_record.DIVE_PARTICIPANTS;
        v_cost := dive_event_record.DIVE_COST;

        -- Determine the number of instructors required based on the new policy
        IF v_participants <= 4 THEN
            v_instructors := 1;
        ELSIF v_participants BETWEEN 5 AND 7 THEN
            v_instructors := 2;
        ELSE
            v_instructors := 3;
        END IF;

        -- Display the result
        DBMS_OUTPUT.PUT_LINE('CUSTOMER: ' || v_customer_name);
        DBMS_OUTPUT.PUT_LINE('DIVE NAME: ' || v_dive_name);
        DBMS_OUTPUT.PUT_LINE('PARTICIPANTS: ' || v_participants);
        DBMS_OUTPUT.PUT_LINE('STATUS: ' || v_instructors || ' instructor' || CASE WHEN v_instructors > 1 THEN 's' ELSE '' END || ' required.');
        DBMS_OUTPUT.PUT_LINE('-----------------------------------');

        -- Exit after the first matching record for "Alex Hanson"
        EXIT;
    END LOOP;

    -- After the loop, check if no rows were fetched
    IF NOT row_found THEN
        DBMS_OUTPUT.PUT_LINE('No dive events found with cost over 500 for customer Alex Hanson.');
    END IF;

END;
/
SET SERVEROUTPUT ON;

--Question 6
CREATE OR REPLACE VIEW Vw_Dive_Event AS
SELECT 
    DE.INS_ID AS Instructor_ID,
    DE.CUST_ID AS Customer_ID,
    C.CUST_ADDRESS AS Customer_Address,
    D.DIVE_DURATION AS Dive_Duration,
    DE.DIVE_DATE AS Dive_Date
FROM 
    DIVE_EVENT DE
    JOIN CUSTOMER C ON DE.CUST_ID = C.CUST_ID
    JOIN DIVE D ON DE.DIVE_ID = D.DIVE_ID
WHERE 
    DE.DIVE_DATE < TO_DATE('2017-07-19', 'YYYY-MM-DD');
SELECT * FROM Vw_Dive_Event;


--Question 7
CREATE OR REPLACE TRIGGER New_Dive_Event
BEFORE INSERT ON DIVE_EVENT
FOR EACH ROW
BEGIN
    -- Check if participants are within the allowed range
    IF :NEW.DIVE_PARTICIPANTS <= 0 OR :NEW.DIVE_PARTICIPANTS > 20 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Number of participants must be between 1 and 20.');
    END IF;
END;
/


-- Attempt to insert a dive event with 0 participants (should fail)
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID)
VALUES ('de_test_1', SYSDATE, 0, 101, 'C115', 550);
-- This should raise an error: Number of participants must be between 1 and 20.

-- Attempt to insert a dive event with more than 20 participants (should fail)
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID)
VALUES ('de_test_2', SYSDATE, 25, 102, 'C117', 551);
-- This should raise an error: Number of participants must be between 1 and 20.

-- Attempt to insert a dive event with valid number of participants (should succeed)
INSERT INTO DIVE_EVENT (DIVE_EVENT_ID, DIVE_DATE, DIVE_PARTICIPANTS, INS_ID, CUST_ID, DIVE_ID)
VALUES ('de_test_3', SYSDATE, 10, 103, 'C118', 552);
-- This insert will work successfully.


--Question8

CREATE OR REPLACE PROCEDURE sp_Customer_Details (
    p_cust_id IN CUSTOMER.CUST_ID%TYPE,
    p_dive_date IN DATE
)
IS
    v_cust_name CUSTOMER.CUST_FNAME%TYPE;
    v_dive_name DIVE.DIVE_NAME%TYPE;
BEGIN
    -- Fetch customer details and dive event name for the given customer ID and dive date
    SELECT 
        C.CUST_FNAME || ' ' || C.CUST_SNAME,
        D.DIVE_NAME
    INTO 
        v_cust_name,
        v_dive_name
    FROM 
        CUSTOMER C
        JOIN DIVE_EVENT DE ON C.CUST_ID = DE.CUST_ID
        JOIN DIVE D ON DE.DIVE_ID = D.DIVE_ID
    WHERE 
        C.CUST_ID = p_cust_id
        AND TRUNC(DE.DIVE_DATE) = TRUNC(p_dive_date);

    -- Display the result
    DBMS_OUTPUT.PUT_LINE('CUSTOMER DETAILS: ' || v_cust_name || ' booked for ' || v_dive_name || ' on ' || TO_CHAR(p_dive_date, 'DD-MON-YY'));
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No booking found for customer ' || p_cust_id || ' on ' || TO_CHAR(p_dive_date, 'DD-MON-YY'));
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

-- Execute the procedure
BEGIN
    sp_Customer_Details('C115', TO_DATE('2017-07-15', 'YYYY-MM-DD'));
END;
/

--Question 9
CREATE OR REPLACE FUNCTION convert_currency (
    p_amount IN NUMBER,
    p_from_currency IN VARCHAR2,
    p_to_currency IN VARCHAR2
)
RETURN NUMBER
IS
    v_exchange_rate NUMBER;
    v_converted_amount NUMBER;
BEGIN
    -- Define exchange rates (for demonstration purposes)
    -- Replace with actual exchange rate logic in a real-world scenario
    IF p_from_currency = 'USD' AND p_to_currency = 'EUR' THEN
        v_exchange_rate := 0.85; -- 1 USD = 0.85 EUR
    ELSIF p_from_currency = 'EUR' AND p_to_currency = 'USD' THEN
        v_exchange_rate := 1.18; -- 1 EUR = 1.18 USD
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Unsupported currency conversion');
    END IF;

    -- Perform currency conversion
    v_converted_amount := p_amount * v_exchange_rate;

    -- Return the converted amount
    RETURN v_converted_amount;
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        RAISE_APPLICATION_ERROR(-20002, 'Division by zero');
    WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20003, 'An error occurred: ' || SQLERRM);
END;
/

-- Execute the function with sample input parameters
DECLARE
    v_participants NUMBER := 5; -- Number of participants
    v_dive_id DIVE.DIVE_ID%TYPE := 550; -- Dive ID
    v_result NUMBER;
BEGIN
    v_result := calculate_dive_cost(v_participants, v_dive_id);
    DBMS_OUTPUT.PUT_LINE('Total cost for ' || v_participants || ' participants: $' || v_result);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/







