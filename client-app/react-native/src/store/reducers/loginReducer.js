const loginReducer = (state = false, action) => {
  switch (action.type) {
    case 'SET_LOGIN':
      return true;
      break;
    case 'SET_LOGOUT':
      return false;
      break;
    default:
      return state;
      break;
  }
}

export default loginReducer;