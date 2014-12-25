        # textセクション(書き込み不可領域)を指定
        .text

        # startを外部から参照可能にする (linux では _start)
        .globl start

        # 表示する文字列のデータ
msg:    .ascii      "hello, world.\n"

start:  
        # まず，write システムコールで文字列を表示する。

        # システムコール番号 (write=0x2000004) を %rax レジスタにセット
        # (linux では 0x01)
        movq    $0x2000004, %rax

        # ファイルディスクリプタ (標準出力=1) を %rdi レジスタにセット
        movq    $1, %rdi

        # 文字列のメモリアドレスを %rsi レジスタにセット
        # x86-64 では直接メモリアドレスを代入できないらしいので rip アドレッシングを使って，
        # プログラムの位置からの相対値でメモリを指定する。
        leaq    msg(%rip), %rsi

        # 文字列の長さ(14バイト)を %rdx レジスタにセット
        movq    $14, %rdx

        # write システムコールを呼び出す。
        syscall

        # 次に，exit システムコールでプロセスを終了する。

        # exit のシステムコール番号は 0x2000001 (linux では 0x3c)
        movq    $0x2000001, %rax

        # プロセスの終了状態を指定 (正常終了=0)
        movq    $0, %rdi

        # exit システムコールを呼び出す。
        syscall
