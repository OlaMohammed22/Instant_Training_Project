import 'package:flutter/material.dart';


/*class SearchScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: SearchView(),
    );
  }
}

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      bool isOnline=false;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150), 
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.close, color: Colors.black), 
          ),
          centerTitle: true, 
          backgroundColor: Colors.white, 
          elevation: 0, 
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 50), 
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Select Doctor',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.search, color: Colors.grey), 
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search for doctor",
                            border: InputBorder.none,
                          ),
                          autofocus: true,
                          onChanged: (query) {
                            context.read<SearchBloc>().add(SearchWord(query));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10), 
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state is SearchResults) {
            return ListView.builder(
              itemCount: state.results.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset('assets/doctor.png'), // Doctor Image
                  title: Text(state.results[index]), // Doctor Name
                  subtitle: Text("Specialist Doctor"),
                );
              },
            );
          }
          return Center(child: Text("Start Searching"));
        },
      ),
    );
  }
}*/
class  SearchScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      
      title: Text('Select Doctor'),
      centerTitle: true,
      leading: IconButton(onPressed: (){
Navigator.pop(context);
      }, icon: Icon(Icons.close)),
     ),
     body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 11500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Colors.grey
            )
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 7),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'search for doctors', 
                prefixIcon: Icon(Icons.search)
              ),
              
            
            ),
          ),
        ),
        SizedBox(height: 10,),
        ListTile(
          leading: Image.asset('assets/doctor.png',),
          title: Text('Dr.Salma Ahmed'),
          subtitle: Text('specialist-doctor'),
          trailing: CircleAvatar(
  radius: 6,
  backgroundColor: Colors.green, 
),
        ),
        SizedBox(height: 10,),
        ListTile(
          leading: Image.asset('assets/doctor.png',),
          title: Text('Dr.Salma Ahmed'),
          subtitle: Text('specialist-doctor'),
          trailing: CircleAvatar(
  radius: 6,
  backgroundColor: Colors.grey,
 
   
),
        ), 
        SizedBox(height: 10,),
        ListTile(
          leading: Image.asset('assets/doctor.png',),
          title: Text('Dr.Salma Ahmed'),
          subtitle: Text('specialist-doctor'),
          trailing: CircleAvatar(
  radius: 6,
  backgroundColor: Colors.grey, 
),
        ),
        SizedBox(height: 10,),
        ListTile(
          leading: Image.asset('assets/doctor.png',),
          title: Text('Dr.Salma Ahmed'),
          subtitle: Text('specialist-doctor'),
          trailing: CircleAvatar(
  radius: 6,
  backgroundColor: Colors.grey, 
),
        )
      ],
     ),
    );
  }
}
