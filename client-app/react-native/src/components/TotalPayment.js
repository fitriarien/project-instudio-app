import React from 'react';
import {View, StyleSheet, Text} from 'react-native';
import { formatCurrency, getSupportedCurrencies } from "react-native-format-currency";

const TotalPayment = ({paymentList}) => {
  let totalPayment = 0;
  const subPayment = paymentList.map(sub => {
    return totalPayment += sub.payment_amount;
  })
  const [valueFormattedWithSymbol, valueFormattedWithoutSymbol, symbol] = formatCurrency({ amount: Number(totalPayment), code: "IDR" });

  return (
    <View style={styles.contentTotal}>
      <Text style={[styles.info, styles.totalCost]}>Total Payment</Text>
      <Text style={[styles.info, styles.totalCost]}>{valueFormattedWithSymbol}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  contentTotal: {
    display: 'flex', 
    flexDirection: 'row', 
    justifyContent: 'space-between',
    borderBottomColor: 'gray', 
    borderBottomWidth: 2,
    marginHorizontal: 8
  },
  info: {
    color: 'black',
    padding: 2,
  },
  totalCost: {
    fontSize: 16,
    fontWeight: 'bold',
    padding: 8,
    textAlign: 'right',
  },
})

export default TotalPayment;
