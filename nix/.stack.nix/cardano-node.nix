{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cardano-node"; version = "3.0.1.87"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "operations@iohk.io";
      author = "IOHK";
      homepage = "";
      url = "";
      synopsis = "";
      description = "The cardano full node";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.canonical-json)
          (hsPkgs.cardano-binary)
          (hsPkgs.cardano-config)
          (hsPkgs.cardano-crypto)
          (hsPkgs.cardano-crypto-class)
          (hsPkgs.cardano-crypto-wrapper)
          (hsPkgs.cardano-ledger)
          (hsPkgs.cardano-ledger-test)
          (hsPkgs.cardano-prelude)
          (hsPkgs.cardano-prelude-test)
          (hsPkgs.cardano-shell)
          (hsPkgs.containers)
          (hsPkgs.contra-tracer)
          (hsPkgs.cborg)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.io-sim-classes)
          (hsPkgs.iohk-monitoring)
          (hsPkgs.iproute)
          (hsPkgs.lens)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.network-mux)
          (hsPkgs.optparse-applicative)
          (hsPkgs.ouroboros-consensus)
          (hsPkgs.ouroboros-network)
          (hsPkgs.process)
          (hsPkgs.pvss)
          (hsPkgs.safe-exceptions)
          (hsPkgs.serialise)
          (hsPkgs.stm)
          (hsPkgs.string-conv)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.typed-protocols)
          (hsPkgs.typed-protocols-cbor)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          ] ++ (if system.isWindows
          then [ (hsPkgs.Win32) ]
          else [ (hsPkgs.unix) (hsPkgs.brick) (hsPkgs.vty) ]);
        };
      exes = {
        "cardano-node" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.cardano-config)
            (hsPkgs.cardano-crypto-wrapper)
            (hsPkgs.cardano-ledger)
            (hsPkgs.cardano-ledger-test)
            (hsPkgs.cardano-node)
            (hsPkgs.cardano-prelude)
            (hsPkgs.cardano-shell)
            (hsPkgs.cborg)
            (hsPkgs.containers)
            (hsPkgs.contra-tracer)
            (hsPkgs.cryptonite)
            (hsPkgs.directory)
            (hsPkgs.formatting)
            (hsPkgs.io-sim-classes)
            (hsPkgs.iohk-monitoring)
            (hsPkgs.iproute)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.ouroboros-network)
            (hsPkgs.ouroboros-consensus)
            (hsPkgs.optparse-applicative)
            (hsPkgs.safe-exceptions)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          };
        "wallet-client" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cardano-config)
            (hsPkgs.cardano-ledger)
            (hsPkgs.cardano-ledger-test)
            (hsPkgs.cardano-node)
            (hsPkgs.cardano-prelude)
            (hsPkgs.cardano-shell)
            (hsPkgs.contra-tracer)
            (hsPkgs.io-sim-classes)
            (hsPkgs.iohk-monitoring)
            (hsPkgs.ouroboros-network)
            (hsPkgs.ouroboros-consensus)
            (hsPkgs.typed-protocols)
            (hsPkgs.typed-protocols-cbor)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.serialise)
            (hsPkgs.text)
            ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          };
        "cardano-cli" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cardano-config)
            (hsPkgs.cardano-binary)
            (hsPkgs.cardano-crypto-wrapper)
            (hsPkgs.cardano-ledger)
            (hsPkgs.cardano-prelude)
            (hsPkgs.cardano-node)
            (hsPkgs.optparse-applicative)
            (hsPkgs.ouroboros-consensus)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        "chairman" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.cardano-config)
            (hsPkgs.containers)
            (hsPkgs.contra-tracer)
            (hsPkgs.cardano-node)
            (hsPkgs.cardano-shell)
            (hsPkgs.io-sim-classes)
            (hsPkgs.network)
            (hsPkgs.network-mux)
            (hsPkgs.optparse-applicative)
            (hsPkgs.ouroboros-consensus)
            (hsPkgs.ouroboros-network)
            (hsPkgs.serialise)
            (hsPkgs.text)
            (hsPkgs.typed-protocols)
            (hsPkgs.typed-protocols-cbor)
            ] ++ (if system.isWindows
            then [ (hsPkgs.Win32) ]
            else [ (hsPkgs.unix) ]);
          };
        };
      tests = {
        "cardano-node-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.cardano-prelude) ];
          };
        };
      };
    } // {
    src = (pkgs.lib).mkDefault (pkgs.fetchgit {
      url = "https://github.com/input-output-hk/cardano-node";
      rev = "a250fba145b361df323685d6e6fd78a69cfb195b";
      sha256 = "0bbknak2f81qnlrbn4gzrrqfaqh87zbbb8x0pd37gw901yb5islg";
      });
    postUnpack = "sourceRoot+=/cardano-node; echo source root reset to \$sourceRoot";
    }