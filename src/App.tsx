import React from 'react';
import {IModuleClassProps} from '@essence-community/constructor-share/type';

import './index.css';

interface AppProps extends IModuleClassProps {
  test?: string;
  test2?: string;
}

export const App = ({ test = "", test2, dispatchMessage }: AppProps) => {

  return (
    <React.Fragment>
      <div>Print {test}</div>
      <div>Print2 {test2}</div>
      <button onClick={() => {
        dispatchMessage("2232", "test", {ck_id: 12});
      }}>Test</button>
    </React.Fragment>
  );
};

export default App;
