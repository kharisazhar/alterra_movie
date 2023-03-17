import 'package:alterra_movie/data/model/movie_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._internal() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

  static late Database _db;
  static var tableName = "T_DETAIL_MOVIE";

  Future<Database> get database async {
    _db = await open();
    return _db;
  }

  Future<Database> open() async {
    /// GET DB PATH
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'alta_movie.db');

    /// CONNECT DB
    _db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      /// CREATE TABLE
      await db.execute(
        '''CREATE TABLE $tableName( 
              id INTEGER PRIMARY KEY,
              movieTitle TEXT NOT NULL,
              moviePoster TEXT NOT NULL,
              voteAverage DOUBLE NOT NULL,
              movieOverview TEXT NOT NULL
              )''',
      );
    });
    return _db;
  }

  Future<void> insertMovie(MovieModel movie) async {
    final db = await database;

    /// SQL :
    /// INSERT INTO T_DETAIL_MOVIE (MOVIE_ID, MOVIE_TITLE, MOVIE_POSTER, MOVIE_VOTE_AVERAGE, MOVIE_OVERVIEW)
    /// VALUES (movie.id, movie.title, movie.poster, movie.vote, movie.overview)
    await db.insert(tableName, movie.toJson());
  }

  Future<void> deleteMovie(int movieId) async {
    final db = await database;

    /// DELETE FROM T_DETAIL_MOVIE WHERE id = movieId;
    await db.delete(tableName, where: 'id = ?', whereArgs: [movieId]);
  }

  Future<List<MovieModel>> getMovieList() async {
    final db = await database;

    /// SELECT * FROM T_DETAIL_MOVIE;
    List<Map<String, dynamic>> result = await db.query(tableName);
    return result.map((e) => MovieModel.fromJson(e)).toList();
  }

  Future<List<MovieModel>> getMovie(int movieId) async {
    /// SELECT * FROM T_DETAIL_MOVIE where id = movieId;
    final db = await database;
    List<Map<String, dynamic>> result =
        await db.query(tableName, where: 'id = ?', whereArgs: [movieId]);
    return result.map((e) => MovieModel.fromJson(e)).toList();
  }

  /// EXAMPLE 1:
  Future<List<MovieModel>> getMovieId(int movieId) async {
    /// SELECT id FROM T_DETAIL_MOVIE where id = movieId;
    final db = await database;
    List<Map<String, dynamic>> result = await db.query(tableName,
        where: 'id = ?', whereArgs: [movieId], columns: ["id"]);
    return result.map((e) => MovieModel.fromJson(e)).toList();
  }

  /// EXAMPLE 2:
  Future<List<MovieModel>> getMovieTitle(int movieId) async {
    /// SELECT movieTitle FROM T_DETAIL_MOVIE where id = movieId;
    final db = await database;
    List<Map<String, dynamic>> result = await db.query(tableName,
        where: 'id = ?', whereArgs: [movieId], columns: ["movieTitle"]);
    return result.map((e) => MovieModel.fromJson(e)).toList();
  }
}
