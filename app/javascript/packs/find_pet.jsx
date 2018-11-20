import React, { Component } from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'


const FindButton = props => {
  if (props.tag) {
    return (<a href={`/pets/${props.tag}`} className="ui button primary">Find</a>);
  } else {
    return (<a href="#" className="ui button primary disabled">Find</a>);
  }
}

FindButton.propTypes = {
  tag: PropTypes.string
}


class FindForm extends Component {
  constructor() {
    super();
    this.state = {
      tag: '',
    };
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(event) {
    console.log(event);
    this.setState({tag: event.target.value});
  }

  render() {
    return (




      <div className="ui field">
        <div className="ui input">
          <label for="pet_tag">Tag</label>
          <input type="text" name="pet[tag]" id="pet_tag" value={this.state.tag} onChange={this.handleChange}/>
        </div>
        <FindButton tag={this.state.tag}/>
      </div>
    )
  }
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <FindForm />,
    document.getElementById('find-pet-form-wrapper').appendChild(document.createElement('div')),
  )
})
