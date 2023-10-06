# alu-vhdl-entity

An interface definition for an ALU. The expected behavior for the ALU's RESULT output is the following:

      CONTROL             RESULT
      0000                SRC1 and SRC2 
      0001                SRC1 or SRC2
      0010                SRC1 + SRC2
      0110                SRC1 - SRC2
      0111                SRC1 < SRC2 ? 1 : 0
      1100                NOT( SRC1 or SRC2 )

The ZERO output must behave as presented bellow:

      ZERO <= RESULT == 0 ? 1 : 0
