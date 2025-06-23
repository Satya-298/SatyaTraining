<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Approve Appointment Slots</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        h2 {
            color: #2c3e50;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #aaa;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f4f4f4;
        }
        button {
            margin: 0 5px;
            padding: 5px 12px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button.reject {
            background-color: #e74c3c;
        }
    </style>
</head>
<body>

    <h2>Pending Appointments</h2>

    <table>
        <thead>
            <tr>
                <th>Appointment ID</th>
                <th>Recipient</th>
                <th>Date</th>
                <th>Time</th>
                <th>Notes</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>APPT001</td>
                <td>John Doe</td>
                <td>2025-06-12</td>
                <td>10:00 - 10:30</td>
                <td>Follow-up</td>
                <td>
                    <button onclick="alert('Approved APPT001')">Approve</button>
                    <button class="reject" onclick="alert('Rejected APPT001')">Reject</button>
                </td>
            </tr>
            <tr>
                <td>APPT002</td>
                <td>Jane Smith</td>
                <td>2025-06-12</td>
                <td>11:00 - 11:30</td>
                <td>Initial Visit</td>
                <td>
                    <button onclick="alert('Approved APPT002')">Approve</button>
                    <button class="reject" onclick="alert('Rejected APPT002')">Reject</button>
                </td>
            </tr>
            <tr>
                <td>APPT003</td>
                <td>Bob Allen</td>
                <td>2025-06-13</td>
                <td>09:30 - 10:00</td>
                <td>Routine Checkup</td>
                <td>
                    <button onclick="alert('Approved APPT003')">Approve</button>
                    <button class="reject" onclick="alert('Rejected APPT003')">Reject</button>
                </td>
            </tr>
        </tbody>
    </table>

</body>
</html>
