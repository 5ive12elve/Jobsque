import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;
  static const String usersTable = 'users';
  static const String jobsTable = 'jobs';
  static const String profileTable = 'profile';

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, 'your_database.db');

    return await openDatabase(path, version: 1, onCreate: _createTable);
  }

  Future<void> _createTable(Database db, int version) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $usersTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        email TEXT UNIQUE
      )
    ''');

    await db.execute('''
      CREATE TABLE IF NOT EXISTS $jobsTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_email TEXT,
        job_type TEXT,
        job_name TEXT,
        job_image TEXT,
        FOREIGN KEY (user_email) REFERENCES $usersTable (email)
      )
    ''');

    // Create the profile table
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $profileTable (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        user_email TEXT,
        photo TEXT,
        FOREIGN KEY (user_email) REFERENCES $usersTable (email)
      )
    ''');
  }

  Future<int?> insertUser(Userlcl user) async {
    final db = await database;

    // Check if the email already exists
    final userWithSameEmail = await getUserByEmail(user.email);
    if (userWithSameEmail != null) {
      print('User already exists in the database');
      return userWithSameEmail.id; // Return the existing user's ID
    }

    // Insert user
    final userId = await db.insert(usersTable, user.toMap());

    // Insert profile with default photo
    final profile = Profile(userEmail: user.email, photo: 'assets/images/img_user_blue_gray_300.svg');
    await db.insert(profileTable, profile.toMap());

    return userId; // Return the newly inserted user's ID
  }

  Future<int?> insertProfile(Profile profile) async {
    final db = await database;
    return await db.insert(profileTable, profile.toMap());
  }

  Future<Job?> getJobByNameAndUser(String userEmail, String jobName) async {
    final db = await database;
    List<Map<String, dynamic>> results = await db.query(jobsTable,
        where: 'user_email = ? AND job_name = ?', whereArgs: [userEmail, jobName], limit: 1);

    if (results.isNotEmpty) {
      return Job(
        id: results[0]['id'],
        userEmail: results[0]['user_email'],
        jobType: results[0]['job_type'],
        jobName: results[0]['job_name'],
        jobImage: results[0]['job_image'],
      );
    }

    return null;
  }

  Future<int> insertJob(Job job) async {
    final db = await database;
    return await db.insert(jobsTable, job.toMap());
  }

  Future<Userlcl?> getUserByEmail(String email) async {
    final db = await database;
    List<Map<String, dynamic>> results = await db.query(usersTable,
        where: 'email = ?', whereArgs: [email], limit: 1);

    if (results.isNotEmpty) {
      return Userlcl(id: results[0]['id'], email: results[0]['email']);
    }

    return null;
  }

  Future<Profile?> getProfileByEmail(String email) async {
    final db = await database;
    List<Map<String, dynamic>> results = await db.query(profileTable,
        where: 'user_email = ?', whereArgs: [email], limit: 1);

    if (results.isNotEmpty) {
      return Profile(
        id: results[0]['id'],
        userEmail: results[0]['user_email'],
        photo: results[0]['photo'],
      );
    }

    return null;
  }


  Future<List<Job>> getJobsByUserEmail(String userEmail) async {
    final db = await database;
    List<Map<String, dynamic>> results = await db.query(jobsTable,
        where: 'user_email = ?', whereArgs: [userEmail]);

    return results.map((result) {
      return Job(
        id: result['id'],
        userEmail: result['user_email'],
        jobType: result['job_type'],
        jobName: result['job_name'],
        jobImage: result['job_image'],
      );
    }).toList();
  }
}

class Userlcl {
  int? id;
  String email;

  Userlcl({this.id, required this.email});

  Map<String, dynamic> toMap() {
    return {'email': email};
  }
}

class Job {
  int? id;
  String userEmail;
  String jobType;
  String jobName;
  String jobImage;

  Job({this.id, required this.userEmail, required this.jobType, required this.jobName, required this.jobImage});

  Map<String, dynamic> toMap() {
    return {
      'user_email': userEmail,
      'job_type': jobType,
      'job_name': jobName,
      'job_image': jobImage,
    };
  }
}

class Profile {
  int? id;
  String userEmail;
  String photo;

  Profile({this.id, required this.userEmail, required this.photo});

  Map<String, dynamic> toMap() {
    return {
      'user_email': userEmail,
      'photo': photo,
    };
  }
}

