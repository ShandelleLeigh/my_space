import React, { Component } from 'react';
import { Header, Image, Cards, Card } from 'semantic-ui-react';
import axios from 'axios';
import '../cards.css';

class Home extends Component {
  state = { friends: [] }

  componentDidMount() {
    axios.get('/api/friends')
      .then( res => this.setState({friends: res.data}) )
  }

  render() {
    return (
      <div className="cards">
        { this.state.friends.map( friend =>
          <Card key={friend.id}>
            <h2>{friend.name}</h2>
            <Image src={friend.avatar} />
          </Card>
        )
      }
    </div>
    );
  }
}

export default Home;
