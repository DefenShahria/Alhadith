
class Chapter {
  final int id;
  final int chapterId;
  final int bookId;
  final String title;
  final int number;
  final String hadisRange;
  final String bookName;

  Chapter({
    required this.id,
    required this.chapterId,
    required this.bookId,
    required this.title,
    required this.number,
    required this.hadisRange,
    required this.bookName,
  });

  factory Chapter.fromMap(Map<String, dynamic> map) {
    return Chapter(
      id: map['id'],
      chapterId: map['chapter_id'],
      bookId: map['book_id'],
      title: map['title'],
      number: map['number'],
      hadisRange: map['hadis_range'],
      bookName: map['book_name'],
    );
  }
}

class Book {
  final int id;
  final String title;
  final String titleAr;
  final int numberOfHadis;
  final String abvrCode;
  final String bookName;
  final String bookDescr;

  Book({
    required this.id,
    required this.title,
    required this.titleAr,
    required this.numberOfHadis,
    required this.abvrCode,
    required this.bookName,
    required this.bookDescr,
  });

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      id: map['id'],
      title: map['title'],
      titleAr: map['title_ar'],
      numberOfHadis: map['number_of_hadis'],
      abvrCode: map['abvr_code'],
      bookName: map['book_name'],
      bookDescr: map['book_descr'],
    );
  }
}

class Hadith {
  final int hadithId;
  final int bookId;
  final String bookName;
  final int chapterId;
  final int sectionId;
  final String narrator;
  final String bn;
  final String ar;
  final String arDiacless;
  final String note;
  final int gradeId;
  final String grade;
  final String gradeColor;

  Hadith({
    required this.hadithId,
    required this.bookId,
    required this.bookName,
    required this.chapterId,
    required this.sectionId,
    required this.narrator,
    required this.bn,
    required this.ar,
    required this.arDiacless,
    required this.note,
    required this.gradeId,
    required this.grade,
    required this.gradeColor,
  });

  factory Hadith.fromMap(Map<String, dynamic> map) {
    return Hadith(
      hadithId: map['hadith_id'],
      bookId: map['book_id'],
      bookName: map['book_name'],
      chapterId: map['chapter_id'],
      sectionId: map['section_id'],
      narrator: map['narrator'],
      bn: map['bn'],
      ar: map['ar'],
      arDiacless: map['ar_diacless'],
      note: map['note'],
      gradeId: map['grade_id'],
      grade: map['grade'],
      gradeColor: map['grade_color'],
    );
  }
}

class Section {
  final int id;
  final int bookId;
  final String bookName;
  final int chapterId;
  final int sectionId;
  final String title;
  final String preface;
  final int number;

  Section({
    required this.id,
    required this.bookId,
    required this.bookName,
    required this.chapterId,
    required this.sectionId,
    required this.title,
    required this.preface,
    required this.number,
  });

  factory Section.fromMap(Map<String, dynamic> map) {
    return Section(
      id: map['id'],
      bookId: map['book_id'],
      bookName: map['book_name'],
      chapterId: map['chapter_id'],
      sectionId: map['section_id'],
      title: map['title'],
      preface: map['preface'],
      number: map['number'],
    );
  }
}




