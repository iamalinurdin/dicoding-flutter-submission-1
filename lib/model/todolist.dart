class TodoList {
  String title;
  String description;
  String date;
  bool isDone;

  TodoList({
    required this.title,
    required this.description,
    required this.date,
    required this.isDone,
  });
}

List<TodoList> todoLists = <TodoList>[
  TodoList(title: 'Mandi Besar', description: 'Mandi besar dulu coy, bisa bersih', date: '01-04-2023', isDone: false),
  TodoList(title: 'Makan', description: 'Makan makan coy, biar ga laper', date: '02-04-2023', isDone: true),
  TodoList(title: 'Ngopi', description: 'Ngopi lah biar ga panik', date: '03-04-2023', isDone: false),
];