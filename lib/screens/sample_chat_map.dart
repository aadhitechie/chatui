final sampleChatList = [
  {
    "id": 1,
    "name": "John Smith",
    "lastMessage": "Hey, how's it going?",
    "timestamp": "2022-12-01T10:30:15.000Z",
    "unreadCount": 0,
    "image": "https://randomuser.me/api/portraits/med/men/1.jpg",
    "isGroup": false
  },
  {
    "id": 2,
    "name": "Jane Doe",
    "lastMessage": "I'll meet you at the park at 3pm.",
    "timestamp": "2022-12-01T11:15:01.000Z",
    "unreadCount": 2,
    "image": "https://randomuser.me/api/portraits/med/men/2.jpg",
    "isGroup": false
  },
  {
    "id": 3,
    "name": "Work Chat",
    "lastMessage": "Can we schedule a meeting for tomorrow?",
    "timestamp": "2022-12-01T12:45:33.000Z",
    "unreadCount": 0,
    "image": "https://randomuser.me/api/portraits/med/men/13.jpg",
    "isGroup": true,
    "members": [
      {
        "name": "John Smith",
        "image": "https://randomuser.me/api/portraits/med/men/14.jpg",
      },
      {
        "name": "Jane Doe",
        "image": "https://randomuser.me/api/portraits/med/men/15.jpg",
      },
      {
        "name": "Bob Johnson",
        "image": "https://randomuser.me/api/portraits/med/men/16.jpg",
      }
    ]
  },
  {
    "id": 4,
    "name": "Family Group",
    "lastMessage": "Let's plan a family vacation!",
    "timestamp": "2022-12-01T14:00:00.000Z",
    "unreadCount": 1,
    "image": "https://randomuser.me/api/portraits/med/men/17.jpg",
    "isGroup": true,
    "members": [
      {
        "name": "Mom",
        "image": "https://randomuser.me/api/portraits/med/men/18.jpg",
      },
      {
        "name": "Dad",
        "image": "https://randomuser.me/api/portraits/med/men/19.jpg",
      },
      {
        "name": "Sister",
        "image": "https://randomuser.me/api/portraits/med/men/10.jpg",
      },
      {
        "name": "Brother",
        "image": "https://randomuser.me/api/portraits/med/men/17.jpg",
      }
    ]
  },
  {
    "id": 5,
    "name": "Project X",
    "lastMessage": "Let's meet to discuss the progress",
    "timestamp": "2022-12-01T15:00:00.000Z",
    "unreadCount": 0,
    "image": "https://randomuser.me/api/portraits/med/men/31.jpg",
    "isGroup": true,
    "members": [
      {
        "name": "Alice",
        "image": "https://randomuser.me/api/portraits/med/men/41.jpg",
      },
      {
        "name": "Bob",
        "image": "https://randomuser.me/api/portraits/med/men/51.jpg",
      },
      {
        "name": "Charlie",
        "image": "https://randomuser.me/api/portraits/med/men/61.jpg",
      }
    ]
  },
  {
    "id": 6,
    "name": "Mike",
    "lastMessage": "Let's grab lunch today?",
    "timestamp": "2022-12-01T16:00:00.000Z",
    "unreadCount": 0,
    "image": "https://randomuser.me/api/portraits/med/men/61.jpg",
    "isGroup": false
  },
  {
    "id": 7,
    "name": "Book Club",
    "lastMessage": "Who's up for discussing 'The Great Gatsby' next?",
    "timestamp": "2022-12-01T17:00:00.000Z",
    "unreadCount": 2,
    "image": "https://randomuser.me/api/portraits/med/men/71.jpg",
    "isGroup": true,
    "members": [
      {
        "name": "Emily",
        "image": "https://randomuser.me/api/portraits/med/men/51.jpg",
      },
      {
        "name": "David",
        "image": "https://randomuser.me/api/portraits/med/men/51.jpg",
      },
      {
        "name": "Sophie",
        "image": "https://randomuser.me/api/portraits/med/men/61.jpg",
      }
    ]
  },
  {
    "id": 8,
    "name": "Travel Group",
    "lastMessage": "Where should we go for our next trip?",
    "timestamp": "2022-12-01T18:00:00.000Z",
    "unreadCount": 0,
    "image": "https://randomuser.me/api/portraits/med/men/55.jpg",
    "isGroup": true,
    "members": [
      {
        "name": "Mark",
        "image": "https://randomuser.me/api/portraits/med/men/45.jpg",
      },
      {
        "name": "Lauren",
        "image": "https://randomuser.me/api/portraits/med/men/54.jpg",
      },
      {
        "name": "Chris",
        "image": "https://randomuser.me/api/portraits/med/men/321.jpg",
      }
    ]
  },
  {
    "id": 9,
    "name": "Amy",
    "lastMessage": "How's your day going?",
    "timestamp": "2022-12-01T19:00:00.000Z",
    "unreadCount": 0,
    "image": "https://randomuser.me/api/portraits/med/men/73.jpg",
    "isGroup": false
  }
];

final sampleMessages = [
  {
    "sender": "Alice",
    "is_user": true,
    "message_type": "text",
    "message": "Hello, how are you?",
    "time": "10:00 AM"
  },
  {
    "sender": "Bob",
    "is_user": false,
    "message_type": "text",
    "message": "I'm good, thank you. How can I help you?",
    "time": "10:01 AM"
  },
  {
    "sender": "Alice",
    "is_user": true,
    "message_type": "text",
    "message":
        "I was wondering if you could send me an image of a cat?,I was wondering if you could send me an image of a cat?,I was wondering if you could send me an image of a cat?,I was wondering if you could send me an image of a cat?,I was wondering if you could send me an image of a cat?,I was wondering if you could send me an image of a cat?",
    "time": "10:02 AM"
  },
  {
    "sender": "Bob",
    "is_user": false,
    "message_type": "image",
    "image_url":
        "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1443&q=80",
    "time": "10:03 AM",
  },
  {
    "sender": "Alice",
    "is_user": true,
    "message_type": "text",
    "message": "Hello, how are you?",
    "time": "10:00 AM"
  },
  {
    "sender": "Bob",
    "is_user": false,
    "message_type": "text",
    "message": "I'm good, thank you. How can I help you?",
    "time": "10:01 AM"
  },
  {
    "sender": "Alice",
    "is_user": true,
    "message_type": "text",
    "message": "I was wondering if you could send me an image of a cat?",
    "time": "10:02 AM"
  },
  {
    "sender": "Bob",
    "is_user": false,
    "message_type": "image",
    "image_url":
        "https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1443&q=80",
    "time": "10:03 AM"
  }
];
