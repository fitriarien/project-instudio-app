import React, {useState, useEffect} from 'react';
import {View, StyleSheet, Text, TextInput, TouchableOpacity, ImageBackground, Alert} from 'react-native';
import { SafeAreaView } from 'react-native-safe-area-context';
import serverApi from '../util/server-api';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { useDispatch, useSelector } from 'react-redux';
import { useNavigation } from '@react-navigation/native';

const Login = () => {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const navigation = useNavigation();
  const dispatch = useDispatch();
  const isLogin = useSelector(state => state.isLogin);
  const [isValidUname, setIsValidUname] = useState(false);
  const [isValidPass, setIsValidPass] = useState(false);

  useEffect(() => {
    const regexUname = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{6,}$/;
    setIsValidUname(regexUname.test(username));
    const regexPassword = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
    setIsValidPass(regexPassword.test(password));
  }, [username, password]);

  const login = async () => {
    try {
      const {status, data} = await serverApi.post('login', {username: username, password: password});
      // await AsyncStorage.setItem('status', status);
      console.log(status);

      if (status === 200) {
        if (data.role === 'customer') {
          await AsyncStorage.setItem('id', data.id.toString());
          await AsyncStorage.setItem('token', data.token);
          
          dispatch({type: 'SET_LOGIN'});

          navigation.navigate('Main Tab Menu');
          setUsername("");
          setPassword("");
        } else {
          Alert.alert('Admin cannot login');
        }
      } else {
        Alert.alert('Something error while login!');
      }
    } catch (error) {
      if (error === 'Request failed with status code 403' || error === 'Request failed with status code 404') {
        Alert.alert(`Username and password doesn't match`);
      } else if (error === 'Request failed with status code 406') {
        Alert.alert('Your account is inactive. Please contact the administrator!');
      } else {
        Alert.alert('Something error while login!');
      }
      console.log(error);
    }
  }

  const navigateToRegister = async () => {
    navigation.navigate('Register');
  }

  return (
    <SafeAreaView>
      <ImageBackground style={styles.background} source={require('../assets/login-bg.jpg')}>
        <View style={styles.header}>
          <View style={styles.welcomeArea}>
            <View style={{display: 'flex', flexDirection: 'row', justifyContent: 'center'}}>
              <Text style={styles.subwelcomeText}>Welcome to </Text>
              <Text style={styles.welcomeText}>in</Text>
              <Text style={styles.subwelcomeText}>studio!</Text>
            </View>
            <Text style={styles.subText}>Explore new designs everyday!</Text>
          </View>
          
        </View>

        <View style={styles.body}>
          <View style={styles.inputArea}>
            <TextInput 
              style={styles.textInput} 
              placeholder="Username" 
              value={username} 
              onChangeText={setUsername}
            />
            {!isValidUname && username && <Text style={{alignSelf: 'flex-end', fontWeight: 'bold', marginHorizontal: 35, color: 'red'}}>Invalid Username</Text>}
            <TextInput 
              style={styles.textInput} 
              placeholder="Password" 
              value={password} 
              onChangeText={setPassword} 
              secureTextEntry={true}
            />
            {!isValidPass && password && <Text style={{alignSelf: 'flex-end', fontWeight: 'bold', marginHorizontal: 35, color: 'red'}}>Invalid Password</Text>}
          </View>
          <View style={styles.buttonArea}>
            <TouchableOpacity style={styles.buttonLogin} onPress={login}>
              <Text style={styles.buttonText}>Login</Text>
            </TouchableOpacity>
          </View>
        </View>

        <View style={styles.footer}>
          <Text style={styles.footerText}>
            Don't have any account yet?
          </Text>
          <TouchableOpacity style={styles.buttonSignup} onPress={navigateToRegister}>
            <Text style={styles.buttonText}>Sign Up</Text>
          </TouchableOpacity> 
        </View>
      </ImageBackground>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  background: {
    height: '100%',
    resizeMode: 'cover',
  },
  welcomeArea: {
    marginVertical: 100,
    padding: 2,
  },
  welcomeText: {
    fontWeight: 'bold',
    fontSize: 28,
    fontStyle: 'italic',
    color: 'black'
  },
  subwelcomeText: {
    fontSize: 28,
    fontStyle: 'italic',
    color: 'black'
  },
  subText: {
    fontSize: 20,
    fontStyle: 'italic',
    color: 'black',
    textAlign: 'center'
  },
  body: {
    justifyContent: 'center',
    marginBottom: 20
  },
  inputArea: {
    alignItems: 'center',
  },
  textInput: {
    backgroundColor: 'rgba(255, 255, 255, 0.8)',
    fontSize: 15,
    padding: 9,
    borderRadius: 25,
    width: '80%',
    marginVertical: 10,
  },
  buttonArea: {
      marginBottom: 50
  },
  buttonLogin: {
      backgroundColor: '#6e3f25',
      marginBottom: 10,
      padding: 9,
      borderRadius: 25,
      width: '80%',
      height: 50,
      alignSelf: 'center',
      justifyContent: 'center'
  },
  buttonText: {
      textAlign: 'center',
      fontSize: 17,
      fontWeight: 'bold',
      color: 'white'
  },
  footer: {
    justifyContent: 'flex-end',
    marginVertical: 30
  },
  footerText: {
    textAlign: 'center',
    fontSize: 17,
    fontWeight: 'bold',
  },
  buttonSignup: {
    backgroundColor: '#6e3f25',
    margin: 10,
    padding: 9,
    borderRadius: 25,
    width: '80%',
    height: 50,
    alignSelf: 'center',
    justifyContent: 'center'
  },
})

export default Login;
