import React from  'react'
import BackgroundImage from '../components/BackgroundImage';

class Recipes extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      backgroundImage: 'https://images.unsplash.com/photo-1490818387583-1baba5e638af?ixlib=rb-1.2.1&auto=format&fit=crop&w=3931&q=80',
    }
  }

  render() {
    const { backgroundImage } = this.state;

    return(
      <BackgroundImage url={backgroundImage}>
        <div>TESTING</div>
      </BackgroundImage>
    )
  }
}

export default Recipes;
