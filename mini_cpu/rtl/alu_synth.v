/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* src = "alu.v:1" *)
module alu(a, b, cin, sel, y);
  (* src = "alu.v:15" *)
  (* unused_bits = "8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _00_;
  (* src = "alu.v:18" *)
  (* unused_bits = "8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _01_;
  (* src = "alu.v:20" *)
  wire [7:0] _02_;
  (* src = "alu.v:21" *)
  wire [7:0] _03_;
  (* src = "alu.v:30" *)
  wire [7:0] _04_;
  (* src = "alu.v:28" *)
  wire [7:0] _05_;
  (* src = "alu.v:29" *)
  wire [7:0] _06_;
  (* src = "alu.v:32" *)
  wire [7:0] _07_;
  (* src = "alu.v:33" *)
  wire [7:0] _08_;
  (* src = "alu.v:35" *)
  wire [7:0] _09_;
  (* src = "alu.v:31" *)
  wire [7:0] _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  (* src = "alu.v:16" *)
  (* unused_bits = "8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _18_;
  (* src = "alu.v:19" *)
  (* unused_bits = "8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31" *)
  wire [31:0] _19_;
  (* src = "alu.v:34" *)
  wire [7:0] _20_;
  (* src = "alu.v:2" *)
  input [7:0] a;
  (* src = "alu.v:8" *)
  wire [7:0] arithval;
  (* src = "alu.v:2" *)
  input [7:0] b;
  (* src = "alu.v:3" *)
  input cin;
  (* src = "alu.v:9" *)
  wire [7:0] logicval;
  (* src = "alu.v:4" *)
  input [3:0] sel;
  (* src = "alu.v:5" *)
  output [7:0] y;
  assign _00_ = a + (* src = "alu.v:15" *) 32'd1;
  assign _01_ = b + (* src = "alu.v:18" *) 32'd1;
  assign _02_ = a + (* src = "alu.v:21" *) b;
  assign _03_ = _02_ + (* src = "alu.v:21" *) cin;
  assign _04_ = a & (* src = "alu.v:32" *) b;
  assign _05_ = ~ (* src = "alu.v:28" *) a;
  assign _06_ = ~ (* src = "alu.v:29" *) b;
  assign _07_ = ~ (* src = "alu.v:32" *) _04_;
  assign _08_ = ~ (* src = "alu.v:33" *) _10_;
  assign _09_ = ~ (* src = "alu.v:35" *) _20_;
  assign _10_ = a | (* src = "alu.v:33" *) b;
  assign y = sel[3] ? (* full_case = 32'd1 *) (* src = "alu.v:42|alu.v:41" *) logicval : arithval;
  function [7:0] _33_;
    input [7:0] a;
    input [55:0] b;
    input [6:0] s;
    (* full_case = 32'd1 *)
    (* src = "alu.v:34|alu.v:27" *)
    (* parallel_case *)
    casez (s)
      7'b??????1:
        _33_ = b[7:0];
      7'b?????1?:
        _33_ = b[15:8];
      7'b????1??:
        _33_ = b[23:16];
      7'b???1???:
        _33_ = b[31:24];
      7'b??1????:
        _33_ = b[39:32];
      7'b?1?????:
        _33_ = b[47:40];
      7'b1??????:
        _33_ = b[55:48];
      default:
        _33_ = a;
    endcase
  endfunction
  assign logicval = _33_(_09_, { _05_, _06_, _04_, _10_, _07_, _08_, _20_ }, { _17_, _16_, _15_, _14_, _13_, _12_, _11_ });
  function [7:0] _34_;
    input [7:0] a;
    input [55:0] b;
    input [6:0] s;
    (* full_case = 32'd1 *)
    (* src = "alu.v:20|alu.v:13" *)
    (* parallel_case *)
    casez (s)
      7'b??????1:
        _34_ = b[7:0];
      7'b?????1?:
        _34_ = b[15:8];
      7'b????1??:
        _34_ = b[23:16];
      7'b???1???:
        _34_ = b[31:24];
      7'b??1????:
        _34_ = b[39:32];
      7'b?1?????:
        _34_ = b[47:40];
      7'b1??????:
        _34_ = b[55:48];
      default:
        _34_ = a;
    endcase
  endfunction
  assign arithval = _34_(_03_, { a, _00_[7:0], _18_[7:0], b, _01_[7:0], _19_[7:0], _02_ }, { _17_, _16_, _15_, _14_, _13_, _12_, _11_ });
  assign _11_ = sel[2:0] == (* full_case = 32'd1 *) (* src = "alu.v:20|alu.v:13" *) 3'h6;
  assign _12_ = sel[2:0] == (* full_case = 32'd1 *) (* src = "alu.v:19|alu.v:13" *) 3'h5;
  assign _13_ = sel[2:0] == (* full_case = 32'd1 *) (* src = "alu.v:18|alu.v:13" *) 3'h4;
  assign _14_ = sel[2:0] == (* full_case = 32'd1 *) (* src = "alu.v:17|alu.v:13" *) 3'h3;
  assign _15_ = sel[2:0] == (* full_case = 32'd1 *) (* src = "alu.v:16|alu.v:13" *) 3'h2;
  assign _16_ = sel[2:0] == (* full_case = 32'd1 *) (* src = "alu.v:15|alu.v:13" *) 3'h1;
  assign _17_ = ! (* full_case = 32'd1 *) (* src = "alu.v:14|alu.v:13" *) sel[2:0];
  assign _18_ = a - (* src = "alu.v:16" *) 32'd1;
  assign _19_ = b - (* src = "alu.v:19" *) 32'd1;
  assign _20_ = a ^ (* src = "alu.v:35" *) b;
endmodule