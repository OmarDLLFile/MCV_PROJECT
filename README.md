Course Reservation System - Project Documentation
**1) Project Overview**
A Course Reservation System for trainees to practice real-life frontend-backend collaboration.
Users reserve courses, while admins manage departments, buildings, rooms, courses, and approve
reservations.

**3) Roles**
Admin
- Add/edit/delete: Departments, Buildings, Rooms, Courses
- Approve/reject course reservation requests.

**User**
- View available courses.
- Reserve courses.
- View "My Learning List" (approved reservations).

**3) Data Models**
Department
- id: number
- name: string
- description: string
- 
**Building**
- id: number
- name: string
- address: string (optional)

Room
- id: number
- name: string
- buildingId: number
- capacity: number (optional)
- 
Course
- id: number
- title: string
- description: string
- departmentId: number
- buildingId: number
- roomId: number
- date: datetime
- 
User
- id: number
- name: string
- email: string
- 
Reservation
- id: number
- userId: number
- courseId: number
- status: 'pending' | 'accepted' | 'rejected'
- requestDate: datetime
- 
4) Features
Admin:
- Manage Departments, Buildings, Rooms, Courses
- Approve/reject reservations
- 
User:
- View courses
- Reserve courses
- View "My Learning List"
- 
5) Backend (.NET Instructor)
- REST API with CRUD operations
- Database: SQL Server
- Authentication (optional)
  
6) Frontend
- HTML, CSS, Bootstrap, JS
- Responsive pages (mandatory)
- User dashboard (browse, reserve, view list)
- Admin dashboard (manage, approve reservations)

7) API Endpoints
Departments: GET/POST /departments
Buildings: GET/POST /buildings
Rooms: GET /buildings/{id}/rooms, POST /rooms
Courses: GET/POST /courses
Reservations: POST /reservations, GET /reservations?status=pending, PUT /reservations/{id}
User Reservations: GET /users/{id}/reservations

8) Workflow
- The admin will add departments, buildings, rooms, and courses to the system.
- The user will browse and reserve a course, which will remain pending until the admin reviews it.
- The admin will accept or reject the reservation request.
- If accepted, the course will appear in the "My Learning List" of the user as a confirmed reservation.
- Ensure all pages are responsive for desktop, tablet, and mobile.
- Test the complete flow end-to-end.
9) Optional Extensions
- Email notifications
- Advanced filtering
- Pagination
- Authentication (optional)
