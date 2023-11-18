import React from "react";
import { Link } from "react-router-dom";

function Header() {
  return (
    <header className="mt-3 py-1">
      <div className="container">
        <h3 className="float-start mb-1">Multisig Wallet Creator (safe)</h3>
        <p className="float-end mb-1">
          <Link to="/">Wallet</Link> {/* TODO walllet from ethers */}
        </p>
      </div>
    </header>
  );
}

export default Header;
