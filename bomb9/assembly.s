
bomb:     file format elf32-i386


Disassembly of section .init:

000009c0 <_init>:
 9c0:	53                   	push   %ebx
 9c1:	83 ec 08             	sub    $0x8,%esp
 9c4:	e8 57 02 00 00       	call   c20 <__x86.get_pc_thunk.bx>
 9c9:	81 c3 8f 45 00 00    	add    $0x458f,%ebx
 9cf:	8b 83 90 00 00 00    	mov    0x90(%ebx),%eax
 9d5:	85 c0                	test   %eax,%eax
 9d7:	74 05                	je     9de <_init+0x1e>
 9d9:	e8 fa 01 00 00       	call   bd8 <__gmon_start__@plt>
 9de:	83 c4 08             	add    $0x8,%esp
 9e1:	5b                   	pop    %ebx
 9e2:	c3                   	ret    

Disassembly of section .plt:

000009f0 <.plt>:
 9f0:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
 9f6:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
 9fc:	00 00                	add    %al,(%eax)
	...

00000a00 <read@plt>:
 a00:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
 a06:	68 00 00 00 00       	push   $0x0
 a0b:	e9 e0 ff ff ff       	jmp    9f0 <.plt>

00000a10 <fflush@plt>:
 a10:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
 a16:	68 08 00 00 00       	push   $0x8
 a1b:	e9 d0 ff ff ff       	jmp    9f0 <.plt>

00000a20 <fgets@plt>:
 a20:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
 a26:	68 10 00 00 00       	push   $0x10
 a2b:	e9 c0 ff ff ff       	jmp    9f0 <.plt>

00000a30 <signal@plt>:
 a30:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
 a36:	68 18 00 00 00       	push   $0x18
 a3b:	e9 b0 ff ff ff       	jmp    9f0 <.plt>

00000a40 <sleep@plt>:
 a40:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
 a46:	68 20 00 00 00       	push   $0x20
 a4b:	e9 a0 ff ff ff       	jmp    9f0 <.plt>

00000a50 <alarm@plt>:
 a50:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
 a56:	68 28 00 00 00       	push   $0x28
 a5b:	e9 90 ff ff ff       	jmp    9f0 <.plt>

00000a60 <__stack_chk_fail@plt>:
 a60:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
 a66:	68 30 00 00 00       	push   $0x30
 a6b:	e9 80 ff ff ff       	jmp    9f0 <.plt>

00000a70 <strcpy@plt>:
 a70:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
 a76:	68 38 00 00 00       	push   $0x38
 a7b:	e9 70 ff ff ff       	jmp    9f0 <.plt>

00000a80 <gethostname@plt>:
 a80:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
 a86:	68 40 00 00 00       	push   $0x40
 a8b:	e9 60 ff ff ff       	jmp    9f0 <.plt>

00000a90 <getenv@plt>:
 a90:	ff a3 30 00 00 00    	jmp    *0x30(%ebx)
 a96:	68 48 00 00 00       	push   $0x48
 a9b:	e9 50 ff ff ff       	jmp    9f0 <.plt>

00000aa0 <malloc@plt>:
 aa0:	ff a3 34 00 00 00    	jmp    *0x34(%ebx)
 aa6:	68 50 00 00 00       	push   $0x50
 aab:	e9 40 ff ff ff       	jmp    9f0 <.plt>

00000ab0 <puts@plt>:
 ab0:	ff a3 38 00 00 00    	jmp    *0x38(%ebx)
 ab6:	68 58 00 00 00       	push   $0x58
 abb:	e9 30 ff ff ff       	jmp    9f0 <.plt>

00000ac0 <__memmove_chk@plt>:
 ac0:	ff a3 3c 00 00 00    	jmp    *0x3c(%ebx)
 ac6:	68 60 00 00 00       	push   $0x60
 acb:	e9 20 ff ff ff       	jmp    9f0 <.plt>

00000ad0 <exit@plt>:
 ad0:	ff a3 40 00 00 00    	jmp    *0x40(%ebx)
 ad6:	68 68 00 00 00       	push   $0x68
 adb:	e9 10 ff ff ff       	jmp    9f0 <.plt>

00000ae0 <__libc_start_main@plt>:
 ae0:	ff a3 44 00 00 00    	jmp    *0x44(%ebx)
 ae6:	68 70 00 00 00       	push   $0x70
 aeb:	e9 00 ff ff ff       	jmp    9f0 <.plt>

00000af0 <write@plt>:
 af0:	ff a3 48 00 00 00    	jmp    *0x48(%ebx)
 af6:	68 78 00 00 00       	push   $0x78
 afb:	e9 f0 fe ff ff       	jmp    9f0 <.plt>

00000b00 <strcasecmp@plt>:
 b00:	ff a3 4c 00 00 00    	jmp    *0x4c(%ebx)
 b06:	68 80 00 00 00       	push   $0x80
 b0b:	e9 e0 fe ff ff       	jmp    9f0 <.plt>

00000b10 <__isoc99_sscanf@plt>:
 b10:	ff a3 50 00 00 00    	jmp    *0x50(%ebx)
 b16:	68 88 00 00 00       	push   $0x88
 b1b:	e9 d0 fe ff ff       	jmp    9f0 <.plt>

00000b20 <fopen@plt>:
 b20:	ff a3 54 00 00 00    	jmp    *0x54(%ebx)
 b26:	68 90 00 00 00       	push   $0x90
 b2b:	e9 c0 fe ff ff       	jmp    9f0 <.plt>

00000b30 <__errno_location@plt>:
 b30:	ff a3 58 00 00 00    	jmp    *0x58(%ebx)
 b36:	68 98 00 00 00       	push   $0x98
 b3b:	e9 b0 fe ff ff       	jmp    9f0 <.plt>

00000b40 <__printf_chk@plt>:
 b40:	ff a3 5c 00 00 00    	jmp    *0x5c(%ebx)
 b46:	68 a0 00 00 00       	push   $0xa0
 b4b:	e9 a0 fe ff ff       	jmp    9f0 <.plt>

00000b50 <socket@plt>:
 b50:	ff a3 60 00 00 00    	jmp    *0x60(%ebx)
 b56:	68 a8 00 00 00       	push   $0xa8
 b5b:	e9 90 fe ff ff       	jmp    9f0 <.plt>

00000b60 <__fprintf_chk@plt>:
 b60:	ff a3 64 00 00 00    	jmp    *0x64(%ebx)
 b66:	68 b0 00 00 00       	push   $0xb0
 b6b:	e9 80 fe ff ff       	jmp    9f0 <.plt>

00000b70 <gethostbyname@plt>:
 b70:	ff a3 68 00 00 00    	jmp    *0x68(%ebx)
 b76:	68 b8 00 00 00       	push   $0xb8
 b7b:	e9 70 fe ff ff       	jmp    9f0 <.plt>

00000b80 <strtol@plt>:
 b80:	ff a3 6c 00 00 00    	jmp    *0x6c(%ebx)
 b86:	68 c0 00 00 00       	push   $0xc0
 b8b:	e9 60 fe ff ff       	jmp    9f0 <.plt>

00000b90 <connect@plt>:
 b90:	ff a3 70 00 00 00    	jmp    *0x70(%ebx)
 b96:	68 c8 00 00 00       	push   $0xc8
 b9b:	e9 50 fe ff ff       	jmp    9f0 <.plt>

00000ba0 <close@plt>:
 ba0:	ff a3 74 00 00 00    	jmp    *0x74(%ebx)
 ba6:	68 d0 00 00 00       	push   $0xd0
 bab:	e9 40 fe ff ff       	jmp    9f0 <.plt>

00000bb0 <__ctype_b_loc@plt>:
 bb0:	ff a3 78 00 00 00    	jmp    *0x78(%ebx)
 bb6:	68 d8 00 00 00       	push   $0xd8
 bbb:	e9 30 fe ff ff       	jmp    9f0 <.plt>

00000bc0 <__sprintf_chk@plt>:
 bc0:	ff a3 7c 00 00 00    	jmp    *0x7c(%ebx)
 bc6:	68 e0 00 00 00       	push   $0xe0
 bcb:	e9 20 fe ff ff       	jmp    9f0 <.plt>

Disassembly of section .plt.got:

00000bd0 <__cxa_finalize@plt>:
 bd0:	ff a3 8c 00 00 00    	jmp    *0x8c(%ebx)
 bd6:	66 90                	xchg   %ax,%ax

00000bd8 <__gmon_start__@plt>:
 bd8:	ff a3 90 00 00 00    	jmp    *0x90(%ebx)
 bde:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000be0 <_start>:
     be0:	31 ed                	xor    %ebp,%ebp
     be2:	5e                   	pop    %esi
     be3:	89 e1                	mov    %esp,%ecx
     be5:	83 e4 f0             	and    $0xfffffff0,%esp
     be8:	50                   	push   %eax
     be9:	54                   	push   %esp
     bea:	52                   	push   %edx
     beb:	e8 22 00 00 00       	call   c12 <_start+0x32>
     bf0:	81 c3 68 43 00 00    	add    $0x4368,%ebx
     bf6:	8d 83 18 d7 ff ff    	lea    -0x28e8(%ebx),%eax
     bfc:	50                   	push   %eax
     bfd:	8d 83 b8 d6 ff ff    	lea    -0x2948(%ebx),%eax
     c03:	50                   	push   %eax
     c04:	51                   	push   %ecx
     c05:	56                   	push   %esi
     c06:	ff b3 a0 00 00 00    	pushl  0xa0(%ebx)
     c0c:	e8 cf fe ff ff       	call   ae0 <__libc_start_main@plt>
     c11:	f4                   	hlt    
     c12:	8b 1c 24             	mov    (%esp),%ebx
     c15:	c3                   	ret    
     c16:	66 90                	xchg   %ax,%ax
     c18:	66 90                	xchg   %ax,%ax
     c1a:	66 90                	xchg   %ax,%ax
     c1c:	66 90                	xchg   %ax,%ax
     c1e:	66 90                	xchg   %ax,%ax

00000c20 <__x86.get_pc_thunk.bx>:
     c20:	8b 1c 24             	mov    (%esp),%ebx
     c23:	c3                   	ret    
     c24:	66 90                	xchg   %ax,%ax
     c26:	66 90                	xchg   %ax,%ax
     c28:	66 90                	xchg   %ax,%ax
     c2a:	66 90                	xchg   %ax,%ax
     c2c:	66 90                	xchg   %ax,%ax
     c2e:	66 90                	xchg   %ax,%ax

00000c30 <deregister_tm_clones>:
     c30:	e8 e4 00 00 00       	call   d19 <__x86.get_pc_thunk.dx>
     c35:	81 c2 23 43 00 00    	add    $0x4323,%edx
     c3b:	8d 8a e8 07 00 00    	lea    0x7e8(%edx),%ecx
     c41:	8d 82 e8 07 00 00    	lea    0x7e8(%edx),%eax
     c47:	39 c8                	cmp    %ecx,%eax
     c49:	74 1d                	je     c68 <deregister_tm_clones+0x38>
     c4b:	8b 82 80 00 00 00    	mov    0x80(%edx),%eax
     c51:	85 c0                	test   %eax,%eax
     c53:	74 13                	je     c68 <deregister_tm_clones+0x38>
     c55:	55                   	push   %ebp
     c56:	89 e5                	mov    %esp,%ebp
     c58:	83 ec 14             	sub    $0x14,%esp
     c5b:	51                   	push   %ecx
     c5c:	ff d0                	call   *%eax
     c5e:	83 c4 10             	add    $0x10,%esp
     c61:	c9                   	leave  
     c62:	c3                   	ret    
     c63:	90                   	nop
     c64:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c68:	f3 c3                	repz ret 
     c6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000c70 <register_tm_clones>:
     c70:	e8 a4 00 00 00       	call   d19 <__x86.get_pc_thunk.dx>
     c75:	81 c2 e3 42 00 00    	add    $0x42e3,%edx
     c7b:	55                   	push   %ebp
     c7c:	8d 8a e8 07 00 00    	lea    0x7e8(%edx),%ecx
     c82:	8d 82 e8 07 00 00    	lea    0x7e8(%edx),%eax
     c88:	29 c8                	sub    %ecx,%eax
     c8a:	89 e5                	mov    %esp,%ebp
     c8c:	53                   	push   %ebx
     c8d:	c1 f8 02             	sar    $0x2,%eax
     c90:	89 c3                	mov    %eax,%ebx
     c92:	83 ec 04             	sub    $0x4,%esp
     c95:	c1 eb 1f             	shr    $0x1f,%ebx
     c98:	01 d8                	add    %ebx,%eax
     c9a:	d1 f8                	sar    %eax
     c9c:	74 14                	je     cb2 <register_tm_clones+0x42>
     c9e:	8b 92 a4 00 00 00    	mov    0xa4(%edx),%edx
     ca4:	85 d2                	test   %edx,%edx
     ca6:	74 0a                	je     cb2 <register_tm_clones+0x42>
     ca8:	83 ec 08             	sub    $0x8,%esp
     cab:	50                   	push   %eax
     cac:	51                   	push   %ecx
     cad:	ff d2                	call   *%edx
     caf:	83 c4 10             	add    $0x10,%esp
     cb2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     cb5:	c9                   	leave  
     cb6:	c3                   	ret    
     cb7:	89 f6                	mov    %esi,%esi
     cb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000cc0 <__do_global_dtors_aux>:
     cc0:	55                   	push   %ebp
     cc1:	89 e5                	mov    %esp,%ebp
     cc3:	53                   	push   %ebx
     cc4:	e8 57 ff ff ff       	call   c20 <__x86.get_pc_thunk.bx>
     cc9:	81 c3 8f 42 00 00    	add    $0x428f,%ebx
     ccf:	83 ec 04             	sub    $0x4,%esp
     cd2:	80 bb e8 07 00 00 00 	cmpb   $0x0,0x7e8(%ebx)
     cd9:	75 27                	jne    d02 <__do_global_dtors_aux+0x42>
     cdb:	8b 83 8c 00 00 00    	mov    0x8c(%ebx),%eax
     ce1:	85 c0                	test   %eax,%eax
     ce3:	74 11                	je     cf6 <__do_global_dtors_aux+0x36>
     ce5:	83 ec 0c             	sub    $0xc,%esp
     ce8:	ff b3 ac 00 00 00    	pushl  0xac(%ebx)
     cee:	e8 dd fe ff ff       	call   bd0 <__cxa_finalize@plt>
     cf3:	83 c4 10             	add    $0x10,%esp
     cf6:	e8 35 ff ff ff       	call   c30 <deregister_tm_clones>
     cfb:	c6 83 e8 07 00 00 01 	movb   $0x1,0x7e8(%ebx)
     d02:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     d05:	c9                   	leave  
     d06:	c3                   	ret    
     d07:	89 f6                	mov    %esi,%esi
     d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d10 <frame_dummy>:
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	5d                   	pop    %ebp
     d14:	e9 57 ff ff ff       	jmp    c70 <register_tm_clones>

00000d19 <__x86.get_pc_thunk.dx>:
     d19:	8b 14 24             	mov    (%esp),%edx
     d1c:	c3                   	ret    

00000d1d <main>:
     d1d:	8d 4c 24 04          	lea    0x4(%esp),%ecx
     d21:	83 e4 f0             	and    $0xfffffff0,%esp
     d24:	ff 71 fc             	pushl  -0x4(%ecx)
     d27:	55                   	push   %ebp
     d28:	89 e5                	mov    %esp,%ebp
     d2a:	56                   	push   %esi
     d2b:	53                   	push   %ebx
     d2c:	51                   	push   %ecx
     d2d:	83 ec 0c             	sub    $0xc,%esp
     d30:	e8 eb fe ff ff       	call   c20 <__x86.get_pc_thunk.bx>
     d35:	81 c3 23 42 00 00    	add    $0x4223,%ebx
     d3b:	8b 01                	mov    (%ecx),%eax
     d3d:	8b 71 04             	mov    0x4(%ecx),%esi
     d40:	83 f8 01             	cmp    $0x1,%eax
     d43:	0f 84 75 01 00 00    	je     ebe <main+0x1a1>
     d49:	83 f8 02             	cmp    $0x2,%eax
     d4c:	0f 85 a0 01 00 00    	jne    ef2 <main+0x1d5>
     d52:	83 ec 08             	sub    $0x8,%esp
     d55:	8d 83 58 d7 ff ff    	lea    -0x28a8(%ebx),%eax
     d5b:	50                   	push   %eax
     d5c:	ff 76 04             	pushl  0x4(%esi)
     d5f:	e8 bc fd ff ff       	call   b20 <fopen@plt>
     d64:	8d 93 f0 07 00 00    	lea    0x7f0(%ebx),%edx
     d6a:	89 02                	mov    %eax,(%edx)
     d6c:	83 c4 10             	add    $0x10,%esp
     d6f:	85 c0                	test   %eax,%eax
     d71:	0f 84 5c 01 00 00    	je     ed3 <main+0x1b6>
     d77:	e8 06 08 00 00       	call   1582 <initialize_bomb>
     d7c:	83 ec 0c             	sub    $0xc,%esp
     d7f:	8d 83 e8 d7 ff ff    	lea    -0x2818(%ebx),%eax
     d85:	50                   	push   %eax
     d86:	e8 25 fd ff ff       	call   ab0 <puts@plt>
     d8b:	8d 83 24 d8 ff ff    	lea    -0x27dc(%ebx),%eax
     d91:	89 04 24             	mov    %eax,(%esp)
     d94:	e8 17 fd ff ff       	call   ab0 <puts@plt>
     d99:	e8 18 0b 00 00       	call   18b6 <read_line>
     d9e:	89 04 24             	mov    %eax,(%esp)
     da1:	e8 6b 01 00 00       	call   f11 <phase_1>
     da6:	e8 32 0c 00 00       	call   19dd <phase_defused>
     dab:	8d 83 50 d8 ff ff    	lea    -0x27b0(%ebx),%eax
     db1:	89 04 24             	mov    %eax,(%esp)
     db4:	e8 f7 fc ff ff       	call   ab0 <puts@plt>
     db9:	e8 f8 0a 00 00       	call   18b6 <read_line>
     dbe:	89 04 24             	mov    %eax,(%esp)
     dc1:	e8 b8 01 00 00       	call   f7e <phase_2>
     dc6:	e8 12 0c 00 00       	call   19dd <phase_defused>
     dcb:	8d 83 91 d7 ff ff    	lea    -0x286f(%ebx),%eax
     dd1:	89 04 24             	mov    %eax,(%esp)
     dd4:	e8 d7 fc ff ff       	call   ab0 <puts@plt>
     dd9:	e8 d8 0a 00 00       	call   18b6 <read_line>
     dde:	89 04 24             	mov    %eax,(%esp)
     de1:	e8 ca 01 00 00       	call   fb0 <phase_3>
     de6:	e8 f2 0b 00 00       	call   19dd <phase_defused>
     deb:	8d 83 af d7 ff ff    	lea    -0x2851(%ebx),%eax
     df1:	89 04 24             	mov    %eax,(%esp)
     df4:	e8 b7 fc ff ff       	call   ab0 <puts@plt>
     df9:	e8 b8 0a 00 00       	call   18b6 <read_line>
     dfe:	89 04 24             	mov    %eax,(%esp)
     e01:	e8 0f 02 00 00       	call   1015 <phase_4>
     e06:	e8 d2 0b 00 00       	call   19dd <phase_defused>
     e0b:	8d 83 7c d8 ff ff    	lea    -0x2784(%ebx),%eax
     e11:	89 04 24             	mov    %eax,(%esp)
     e14:	e8 97 fc ff ff       	call   ab0 <puts@plt>
     e19:	e8 98 0a 00 00       	call   18b6 <read_line>
     e1e:	89 04 24             	mov    %eax,(%esp)
     e21:	e8 a3 02 00 00       	call   10c9 <phase_5>
     e26:	e8 b2 0b 00 00       	call   19dd <phase_defused>
     e2b:	8d 83 c0 d7 ff ff    	lea    -0x2840(%ebx),%eax
     e31:	89 04 24             	mov    %eax,(%esp)
     e34:	e8 77 fc ff ff       	call   ab0 <puts@plt>
     e39:	e8 78 0a 00 00       	call   18b6 <read_line>
     e3e:	89 04 24             	mov    %eax,(%esp)
     e41:	e8 54 03 00 00       	call   119a <phase_6>
     e46:	e8 92 0b 00 00       	call   19dd <phase_defused>
     e4b:	8d 83 a0 d8 ff ff    	lea    -0x2760(%ebx),%eax
     e51:	89 04 24             	mov    %eax,(%esp)
     e54:	e8 57 fc ff ff       	call   ab0 <puts@plt>
     e59:	e8 58 0a 00 00       	call   18b6 <read_line>
     e5e:	89 04 24             	mov    %eax,(%esp)
     e61:	e8 b5 03 00 00       	call   121b <phase_7>
     e66:	e8 72 0b 00 00       	call   19dd <phase_defused>
     e6b:	8d 83 c0 d8 ff ff    	lea    -0x2740(%ebx),%eax
     e71:	89 04 24             	mov    %eax,(%esp)
     e74:	e8 37 fc ff ff       	call   ab0 <puts@plt>
     e79:	e8 38 0a 00 00       	call   18b6 <read_line>
     e7e:	89 04 24             	mov    %eax,(%esp)
     e81:	e8 29 04 00 00       	call   12af <phase_8>
     e86:	e8 52 0b 00 00       	call   19dd <phase_defused>
     e8b:	8d 83 de d7 ff ff    	lea    -0x2822(%ebx),%eax
     e91:	89 04 24             	mov    %eax,(%esp)
     e94:	e8 17 fc ff ff       	call   ab0 <puts@plt>
     e99:	e8 18 0a 00 00       	call   18b6 <read_line>
     e9e:	89 04 24             	mov    %eax,(%esp)
     ea1:	e8 67 05 00 00       	call   140d <phase_9>
     ea6:	e8 32 0b 00 00       	call   19dd <phase_defused>
     eab:	83 c4 10             	add    $0x10,%esp
     eae:	b8 00 00 00 00       	mov    $0x0,%eax
     eb3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     eb6:	59                   	pop    %ecx
     eb7:	5b                   	pop    %ebx
     eb8:	5e                   	pop    %esi
     eb9:	5d                   	pop    %ebp
     eba:	8d 61 fc             	lea    -0x4(%ecx),%esp
     ebd:	c3                   	ret    
     ebe:	8b 83 94 00 00 00    	mov    0x94(%ebx),%eax
     ec4:	8b 10                	mov    (%eax),%edx
     ec6:	8d 83 f0 07 00 00    	lea    0x7f0(%ebx),%eax
     ecc:	89 10                	mov    %edx,(%eax)
     ece:	e9 a4 fe ff ff       	jmp    d77 <main+0x5a>
     ed3:	ff 76 04             	pushl  0x4(%esi)
     ed6:	ff 36                	pushl  (%esi)
     ed8:	8d 83 5a d7 ff ff    	lea    -0x28a6(%ebx),%eax
     ede:	50                   	push   %eax
     edf:	6a 01                	push   $0x1
     ee1:	e8 5a fc ff ff       	call   b40 <__printf_chk@plt>
     ee6:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     eed:	e8 de fb ff ff       	call   ad0 <exit@plt>
     ef2:	83 ec 04             	sub    $0x4,%esp
     ef5:	ff 36                	pushl  (%esi)
     ef7:	8d 83 77 d7 ff ff    	lea    -0x2889(%ebx),%eax
     efd:	50                   	push   %eax
     efe:	6a 01                	push   $0x1
     f00:	e8 3b fc ff ff       	call   b40 <__printf_chk@plt>
     f05:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     f0c:	e8 bf fb ff ff       	call   ad0 <exit@plt>

00000f11 <phase_1>:
     f11:	53                   	push   %ebx
     f12:	83 ec 1c             	sub    $0x1c,%esp
     f15:	e8 06 fd ff ff       	call   c20 <__x86.get_pc_thunk.bx>
     f1a:	81 c3 3e 40 00 00    	add    $0x403e,%ebx
     f20:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
     f26:	89 44 24 10          	mov    %eax,0x10(%esp)
     f2a:	31 c0                	xor    %eax,%eax
     f2c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
     f33:	00 
     f34:	8d 44 24 0c          	lea    0xc(%esp),%eax
     f38:	50                   	push   %eax
     f39:	8d 83 6c db ff ff    	lea    -0x2494(%ebx),%eax
     f3f:	50                   	push   %eax
     f40:	ff 74 24 2c          	pushl  0x2c(%esp)
     f44:	e8 c7 fb ff ff       	call   b10 <__isoc99_sscanf@plt>
     f49:	83 c4 10             	add    $0x10,%esp
     f4c:	83 f8 01             	cmp    $0x1,%eax
     f4f:	75 21                	jne    f72 <phase_1+0x61>
     f51:	81 7c 24 08 4e 01 00 	cmpl   $0x14e,0x8(%esp)
     f58:	00 
     f59:	74 05                	je     f60 <phase_1+0x4f>
     f5b:	e8 bd 08 00 00       	call   181d <explode_bomb>
     f60:	8b 44 24 0c          	mov    0xc(%esp),%eax
     f64:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
     f6b:	75 0c                	jne    f79 <phase_1+0x68>
     f6d:	83 c4 18             	add    $0x18,%esp
     f70:	5b                   	pop    %ebx
     f71:	c3                   	ret    
     f72:	e8 a6 08 00 00       	call   181d <explode_bomb>
     f77:	eb d8                	jmp    f51 <phase_1+0x40>
     f79:	e8 02 17 00 00       	call   2680 <__stack_chk_fail_local>

00000f7e <phase_2>:
     f7e:	53                   	push   %ebx
     f7f:	83 ec 10             	sub    $0x10,%esp
     f82:	e8 99 fc ff ff       	call   c20 <__x86.get_pc_thunk.bx>
     f87:	81 c3 d1 3f 00 00    	add    $0x3fd1,%ebx
     f8d:	8d 83 f8 d8 ff ff    	lea    -0x2708(%ebx),%eax
     f93:	50                   	push   %eax
     f94:	ff 74 24 1c          	pushl  0x1c(%esp)
     f98:	e8 80 05 00 00       	call   151d <strings_not_equal>
     f9d:	83 c4 10             	add    $0x10,%esp
     fa0:	85 c0                	test   %eax,%eax
     fa2:	75 05                	jne    fa9 <phase_2+0x2b>
     fa4:	83 c4 08             	add    $0x8,%esp
     fa7:	5b                   	pop    %ebx
     fa8:	c3                   	ret    
     fa9:	e8 6f 08 00 00       	call   181d <explode_bomb>
     fae:	eb f4                	jmp    fa4 <phase_2+0x26>

00000fb0 <phase_3>:
     fb0:	53                   	push   %ebx
     fb1:	83 ec 14             	sub    $0x14,%esp
     fb4:	e8 67 fc ff ff       	call   c20 <__x86.get_pc_thunk.bx>
     fb9:	81 c3 9f 3f 00 00    	add    $0x3f9f,%ebx
     fbf:	8d 83 df d8 ff ff    	lea    -0x2721(%ebx),%eax
     fc5:	50                   	push   %eax
     fc6:	e8 33 05 00 00       	call   14fe <string_length>
     fcb:	83 c0 01             	add    $0x1,%eax
     fce:	89 04 24             	mov    %eax,(%esp)
     fd1:	e8 ca fa ff ff       	call   aa0 <malloc@plt>
     fd6:	c7 00 4a 75 73 74    	movl   $0x7473754a,(%eax)
     fdc:	c7 40 04 20 6c 69 6b 	movl   $0x6b696c20,0x4(%eax)
     fe3:	c7 40 08 65 20 42 61 	movl   $0x61422065,0x8(%eax)
     fea:	c7 40 0c 72 74 21 00 	movl   $0x217472,0xc(%eax)
     ff1:	c6 40 0d 21          	movb   $0x21,0xd(%eax)
     ff5:	83 c4 08             	add    $0x8,%esp
     ff8:	50                   	push   %eax
     ff9:	ff 74 24 1c          	pushl  0x1c(%esp)
     ffd:	e8 1b 05 00 00       	call   151d <strings_not_equal>
    1002:	83 c4 10             	add    $0x10,%esp
    1005:	85 c0                	test   %eax,%eax
    1007:	75 05                	jne    100e <phase_3+0x5e>
    1009:	83 c4 08             	add    $0x8,%esp
    100c:	5b                   	pop    %ebx
    100d:	c3                   	ret    
    100e:	e8 0a 08 00 00       	call   181d <explode_bomb>
    1013:	eb f4                	jmp    1009 <phase_3+0x59>

00001015 <phase_4>:
    1015:	55                   	push   %ebp
    1016:	57                   	push   %edi
    1017:	56                   	push   %esi
    1018:	53                   	push   %ebx
    1019:	83 ec 28             	sub    $0x28,%esp
    101c:	e8 ff fb ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    1021:	81 c3 37 3f 00 00    	add    $0x3f37,%ebx
    1027:	8b 74 24 3c          	mov    0x3c(%esp),%esi
    102b:	56                   	push   %esi
    102c:	e8 cd 04 00 00       	call   14fe <string_length>
    1031:	83 c0 01             	add    $0x1,%eax
    1034:	89 04 24             	mov    %eax,(%esp)
    1037:	e8 64 fa ff ff       	call   aa0 <malloc@plt>
    103c:	89 c7                	mov    %eax,%edi
    103e:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    1042:	0f b6 06             	movzbl (%esi),%eax
    1045:	83 c4 10             	add    $0x10,%esp
    1048:	84 c0                	test   %al,%al
    104a:	74 4d                	je     1099 <phase_4+0x84>
    104c:	8d 57 01             	lea    0x1(%edi),%edx
    104f:	eb 22                	jmp    1073 <phase_4+0x5e>
    1051:	0f b6 4c 24 0b       	movzbl 0xb(%esp),%ecx
    1056:	83 e9 4e             	sub    $0x4e,%ecx
    1059:	80 f9 0c             	cmp    $0xc,%cl
    105c:	77 34                	ja     1092 <phase_4+0x7d>
    105e:	89 d1                	mov    %edx,%ecx
    1060:	8d 47 f3             	lea    -0xd(%edi),%eax
    1063:	88 42 ff             	mov    %al,-0x1(%edx)
    1066:	83 c6 01             	add    $0x1,%esi
    1069:	0f b6 06             	movzbl (%esi),%eax
    106c:	83 c2 01             	add    $0x1,%edx
    106f:	84 c0                	test   %al,%al
    1071:	74 2a                	je     109d <phase_4+0x88>
    1073:	89 c7                	mov    %eax,%edi
    1075:	89 c1                	mov    %eax,%ecx
    1077:	83 e1 df             	and    $0xffffffdf,%ecx
    107a:	88 4c 24 0b          	mov    %cl,0xb(%esp)
    107e:	8d 69 bf             	lea    -0x41(%ecx),%ebp
    1081:	89 e9                	mov    %ebp,%ecx
    1083:	80 f9 0c             	cmp    $0xc,%cl
    1086:	77 c9                	ja     1051 <phase_4+0x3c>
    1088:	89 d1                	mov    %edx,%ecx
    108a:	83 c0 0d             	add    $0xd,%eax
    108d:	88 42 ff             	mov    %al,-0x1(%edx)
    1090:	eb d4                	jmp    1066 <phase_4+0x51>
    1092:	89 d1                	mov    %edx,%ecx
    1094:	88 42 ff             	mov    %al,-0x1(%edx)
    1097:	eb cd                	jmp    1066 <phase_4+0x51>
    1099:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
    109d:	c6 01 00             	movb   $0x0,(%ecx)
    10a0:	83 ec 08             	sub    $0x8,%esp
    10a3:	8d 83 38 d9 ff ff    	lea    -0x26c8(%ebx),%eax
    10a9:	50                   	push   %eax
    10aa:	ff 74 24 18          	pushl  0x18(%esp)
    10ae:	e8 6a 04 00 00       	call   151d <strings_not_equal>
    10b3:	83 c4 10             	add    $0x10,%esp
    10b6:	85 c0                	test   %eax,%eax
    10b8:	75 08                	jne    10c2 <phase_4+0xad>
    10ba:	83 c4 1c             	add    $0x1c,%esp
    10bd:	5b                   	pop    %ebx
    10be:	5e                   	pop    %esi
    10bf:	5f                   	pop    %edi
    10c0:	5d                   	pop    %ebp
    10c1:	c3                   	ret    
    10c2:	e8 56 07 00 00       	call   181d <explode_bomb>
    10c7:	eb f1                	jmp    10ba <phase_4+0xa5>

000010c9 <phase_5>:
    10c9:	57                   	push   %edi
    10ca:	56                   	push   %esi
    10cb:	53                   	push   %ebx
    10cc:	83 ec 14             	sub    $0x14,%esp
    10cf:	e8 4c fb ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    10d4:	81 c3 84 3e 00 00    	add    $0x3e84,%ebx
    10da:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    10e0:	89 44 24 10          	mov    %eax,0x10(%esp)
    10e4:	31 c0                	xor    %eax,%eax
    10e6:	8d 44 24 0c          	lea    0xc(%esp),%eax
    10ea:	50                   	push   %eax
    10eb:	8d 83 6c db ff ff    	lea    -0x2494(%ebx),%eax
    10f1:	50                   	push   %eax
    10f2:	ff 74 24 2c          	pushl  0x2c(%esp)
    10f6:	e8 15 fa ff ff       	call   b10 <__isoc99_sscanf@plt>
    10fb:	83 c4 10             	add    $0x10,%esp
    10fe:	83 f8 01             	cmp    $0x1,%eax
    1101:	75 19                	jne    111c <phase_5+0x53>
    1103:	8b 7c 24 08          	mov    0x8(%esp),%edi
    1107:	85 ff                	test   %edi,%edi
    1109:	7e 2e                	jle    1139 <phase_5+0x70>
    110b:	b8 00 00 00 00       	mov    $0x0,%eax
    1110:	b9 00 00 00 00       	mov    $0x0,%ecx
    1115:	ba 01 00 00 00       	mov    $0x1,%edx
    111a:	eb 09                	jmp    1125 <phase_5+0x5c>
    111c:	e8 fc 06 00 00       	call   181d <explode_bomb>
    1121:	eb e0                	jmp    1103 <phase_5+0x3a>
    1123:	89 f2                	mov    %esi,%edx
    1125:	8d 34 0a             	lea    (%edx,%ecx,1),%esi
    1128:	83 c0 01             	add    $0x1,%eax
    112b:	89 d1                	mov    %edx,%ecx
    112d:	39 f8                	cmp    %edi,%eax
    112f:	75 f2                	jne    1123 <phase_5+0x5a>
    1131:	81 fe 55 10 00 00    	cmp    $0x1055,%esi
    1137:	74 05                	je     113e <phase_5+0x75>
    1139:	e8 df 06 00 00       	call   181d <explode_bomb>
    113e:	8b 44 24 0c          	mov    0xc(%esp),%eax
    1142:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    1149:	75 07                	jne    1152 <phase_5+0x89>
    114b:	83 c4 10             	add    $0x10,%esp
    114e:	5b                   	pop    %ebx
    114f:	5e                   	pop    %esi
    1150:	5f                   	pop    %edi
    1151:	c3                   	ret    
    1152:	e8 29 15 00 00       	call   2680 <__stack_chk_fail_local>

00001157 <func6>:
    1157:	57                   	push   %edi
    1158:	56                   	push   %esi
    1159:	53                   	push   %ebx
    115a:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    115e:	8b 7c 24 14          	mov    0x14(%esp),%edi
    1162:	b8 00 00 00 00       	mov    $0x0,%eax
    1167:	85 db                	test   %ebx,%ebx
    1169:	7e 07                	jle    1172 <func6+0x1b>
    116b:	89 f8                	mov    %edi,%eax
    116d:	83 fb 01             	cmp    $0x1,%ebx
    1170:	75 04                	jne    1176 <func6+0x1f>
    1172:	5b                   	pop    %ebx
    1173:	5e                   	pop    %esi
    1174:	5f                   	pop    %edi
    1175:	c3                   	ret    
    1176:	83 ec 08             	sub    $0x8,%esp
    1179:	57                   	push   %edi
    117a:	8d 43 ff             	lea    -0x1(%ebx),%eax
    117d:	50                   	push   %eax
    117e:	e8 d4 ff ff ff       	call   1157 <func6>
    1183:	83 c4 08             	add    $0x8,%esp
    1186:	8d 34 38             	lea    (%eax,%edi,1),%esi
    1189:	57                   	push   %edi
    118a:	83 eb 02             	sub    $0x2,%ebx
    118d:	53                   	push   %ebx
    118e:	e8 c4 ff ff ff       	call   1157 <func6>
    1193:	83 c4 10             	add    $0x10,%esp
    1196:	01 f0                	add    %esi,%eax
    1198:	eb d8                	jmp    1172 <func6+0x1b>

0000119a <phase_6>:
    119a:	53                   	push   %ebx
    119b:	83 ec 18             	sub    $0x18,%esp
    119e:	e8 7d fa ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    11a3:	81 c3 b5 3d 00 00    	add    $0x3db5,%ebx
    11a9:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    11af:	89 44 24 0c          	mov    %eax,0xc(%esp)
    11b3:	31 c0                	xor    %eax,%eax
    11b5:	8d 44 24 04          	lea    0x4(%esp),%eax
    11b9:	50                   	push   %eax
    11ba:	8d 44 24 0c          	lea    0xc(%esp),%eax
    11be:	50                   	push   %eax
    11bf:	8d 83 69 db ff ff    	lea    -0x2497(%ebx),%eax
    11c5:	50                   	push   %eax
    11c6:	ff 74 24 2c          	pushl  0x2c(%esp)
    11ca:	e8 41 f9 ff ff       	call   b10 <__isoc99_sscanf@plt>
    11cf:	83 c4 10             	add    $0x10,%esp
    11d2:	83 f8 02             	cmp    $0x2,%eax
    11d5:	75 0c                	jne    11e3 <phase_6+0x49>
    11d7:	8b 44 24 04          	mov    0x4(%esp),%eax
    11db:	83 e8 02             	sub    $0x2,%eax
    11de:	83 f8 02             	cmp    $0x2,%eax
    11e1:	76 05                	jbe    11e8 <phase_6+0x4e>
    11e3:	e8 35 06 00 00       	call   181d <explode_bomb>
    11e8:	83 ec 08             	sub    $0x8,%esp
    11eb:	ff 74 24 0c          	pushl  0xc(%esp)
    11ef:	6a 06                	push   $0x6
    11f1:	e8 61 ff ff ff       	call   1157 <func6>
    11f6:	83 c4 10             	add    $0x10,%esp
    11f9:	39 44 24 08          	cmp    %eax,0x8(%esp)
    11fd:	74 05                	je     1204 <phase_6+0x6a>
    11ff:	e8 19 06 00 00       	call   181d <explode_bomb>
    1204:	8b 44 24 0c          	mov    0xc(%esp),%eax
    1208:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    120f:	75 05                	jne    1216 <phase_6+0x7c>
    1211:	83 c4 18             	add    $0x18,%esp
    1214:	5b                   	pop    %ebx
    1215:	c3                   	ret    
    1216:	e8 65 14 00 00       	call   2680 <__stack_chk_fail_local>

0000121b <phase_7>:
    121b:	56                   	push   %esi
    121c:	53                   	push   %ebx
    121d:	83 ec 20             	sub    $0x20,%esp
    1220:	e8 fb f9 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    1225:	81 c3 33 3d 00 00    	add    $0x3d33,%ebx
    122b:	8b 74 24 2c          	mov    0x2c(%esp),%esi
    122f:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1235:	89 44 24 18          	mov    %eax,0x18(%esp)
    1239:	31 c0                	xor    %eax,%eax
    123b:	56                   	push   %esi
    123c:	e8 bd 02 00 00       	call   14fe <string_length>
    1241:	83 c4 10             	add    $0x10,%esp
    1244:	83 f8 06             	cmp    $0x6,%eax
    1247:	75 53                	jne    129c <phase_7+0x81>
    1249:	b8 00 00 00 00       	mov    $0x0,%eax
    124e:	0f b6 14 06          	movzbl (%esi,%eax,1),%edx
    1252:	83 e2 0f             	and    $0xf,%edx
    1255:	0f b6 94 13 78 d9 ff 	movzbl -0x2688(%ebx,%edx,1),%edx
    125c:	ff 
    125d:	88 54 04 05          	mov    %dl,0x5(%esp,%eax,1)
    1261:	83 c0 01             	add    $0x1,%eax
    1264:	83 f8 06             	cmp    $0x6,%eax
    1267:	75 e5                	jne    124e <phase_7+0x33>
    1269:	c6 44 24 0b 00       	movb   $0x0,0xb(%esp)
    126e:	83 ec 08             	sub    $0x8,%esp
    1271:	8d 83 ef d8 ff ff    	lea    -0x2711(%ebx),%eax
    1277:	50                   	push   %eax
    1278:	8d 44 24 11          	lea    0x11(%esp),%eax
    127c:	50                   	push   %eax
    127d:	e8 9b 02 00 00       	call   151d <strings_not_equal>
    1282:	83 c4 10             	add    $0x10,%esp
    1285:	85 c0                	test   %eax,%eax
    1287:	75 1a                	jne    12a3 <phase_7+0x88>
    1289:	8b 44 24 0c          	mov    0xc(%esp),%eax
    128d:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    1294:	75 14                	jne    12aa <phase_7+0x8f>
    1296:	83 c4 14             	add    $0x14,%esp
    1299:	5b                   	pop    %ebx
    129a:	5e                   	pop    %esi
    129b:	c3                   	ret    
    129c:	e8 7c 05 00 00       	call   181d <explode_bomb>
    12a1:	eb a6                	jmp    1249 <phase_7+0x2e>
    12a3:	e8 75 05 00 00       	call   181d <explode_bomb>
    12a8:	eb df                	jmp    1289 <phase_7+0x6e>
    12aa:	e8 d1 13 00 00       	call   2680 <__stack_chk_fail_local>

000012af <phase_8>:
    12af:	55                   	push   %ebp
    12b0:	57                   	push   %edi
    12b1:	56                   	push   %esi
    12b2:	53                   	push   %ebx
    12b3:	83 ec 54             	sub    $0x54,%esp
    12b6:	e8 65 f9 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    12bb:	81 c3 9d 3c 00 00    	add    $0x3c9d,%ebx
    12c1:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    12c7:	89 44 24 44          	mov    %eax,0x44(%esp)
    12cb:	31 c0                	xor    %eax,%eax
    12cd:	8d 44 24 14          	lea    0x14(%esp),%eax
    12d1:	50                   	push   %eax
    12d2:	ff 74 24 6c          	pushl  0x6c(%esp)
    12d6:	e8 91 05 00 00       	call   186c <read_six_numbers>
    12db:	83 c4 10             	add    $0x10,%esp
    12de:	bd 00 00 00 00       	mov    $0x0,%ebp
    12e3:	8b 44 ac 0c          	mov    0xc(%esp,%ebp,4),%eax
    12e7:	83 e8 01             	sub    $0x1,%eax
    12ea:	83 f8 05             	cmp    $0x5,%eax
    12ed:	77 10                	ja     12ff <phase_8+0x50>
    12ef:	83 c5 01             	add    $0x1,%ebp
    12f2:	83 fd 06             	cmp    $0x6,%ebp
    12f5:	74 55                	je     134c <phase_8+0x9d>
    12f7:	89 ee                	mov    %ebp,%esi
    12f9:	8d 7c 24 0c          	lea    0xc(%esp),%edi
    12fd:	eb 0f                	jmp    130e <phase_8+0x5f>
    12ff:	e8 19 05 00 00       	call   181d <explode_bomb>
    1304:	eb e9                	jmp    12ef <phase_8+0x40>
    1306:	83 c6 01             	add    $0x1,%esi
    1309:	83 fe 05             	cmp    $0x5,%esi
    130c:	7f d5                	jg     12e3 <phase_8+0x34>
    130e:	8b 04 b7             	mov    (%edi,%esi,4),%eax
    1311:	39 44 af fc          	cmp    %eax,-0x4(%edi,%ebp,4)
    1315:	75 ef                	jne    1306 <phase_8+0x57>
    1317:	e8 01 05 00 00       	call   181d <explode_bomb>
    131c:	eb e8                	jmp    1306 <phase_8+0x57>
    131e:	8b 52 08             	mov    0x8(%edx),%edx
    1321:	83 c0 01             	add    $0x1,%eax
    1324:	39 c8                	cmp    %ecx,%eax
    1326:	75 f6                	jne    131e <phase_8+0x6f>
    1328:	89 54 bc 24          	mov    %edx,0x24(%esp,%edi,4)
    132c:	83 c6 01             	add    $0x1,%esi
    132f:	83 fe 06             	cmp    $0x6,%esi
    1332:	74 1f                	je     1353 <phase_8+0xa4>
    1334:	89 f7                	mov    %esi,%edi
    1336:	8b 4c b4 0c          	mov    0xc(%esp,%esi,4),%ecx
    133a:	b8 01 00 00 00       	mov    $0x1,%eax
    133f:	8d 93 a0 05 00 00    	lea    0x5a0(%ebx),%edx
    1345:	83 f9 01             	cmp    $0x1,%ecx
    1348:	7f d4                	jg     131e <phase_8+0x6f>
    134a:	eb dc                	jmp    1328 <phase_8+0x79>
    134c:	be 00 00 00 00       	mov    $0x0,%esi
    1351:	eb e1                	jmp    1334 <phase_8+0x85>
    1353:	8b 74 24 24          	mov    0x24(%esp),%esi
    1357:	8b 44 24 28          	mov    0x28(%esp),%eax
    135b:	89 46 08             	mov    %eax,0x8(%esi)
    135e:	8b 54 24 2c          	mov    0x2c(%esp),%edx
    1362:	89 50 08             	mov    %edx,0x8(%eax)
    1365:	8b 44 24 30          	mov    0x30(%esp),%eax
    1369:	89 42 08             	mov    %eax,0x8(%edx)
    136c:	8b 54 24 34          	mov    0x34(%esp),%edx
    1370:	89 50 08             	mov    %edx,0x8(%eax)
    1373:	8b 44 24 38          	mov    0x38(%esp),%eax
    1377:	89 42 08             	mov    %eax,0x8(%edx)
    137a:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    1381:	bf 05 00 00 00       	mov    $0x5,%edi
    1386:	eb 08                	jmp    1390 <phase_8+0xe1>
    1388:	8b 76 08             	mov    0x8(%esi),%esi
    138b:	83 ef 01             	sub    $0x1,%edi
    138e:	74 10                	je     13a0 <phase_8+0xf1>
    1390:	8b 46 08             	mov    0x8(%esi),%eax
    1393:	8b 00                	mov    (%eax),%eax
    1395:	39 06                	cmp    %eax,(%esi)
    1397:	7e ef                	jle    1388 <phase_8+0xd9>
    1399:	e8 7f 04 00 00       	call   181d <explode_bomb>
    139e:	eb e8                	jmp    1388 <phase_8+0xd9>
    13a0:	8b 44 24 3c          	mov    0x3c(%esp),%eax
    13a4:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    13ab:	75 08                	jne    13b5 <phase_8+0x106>
    13ad:	83 c4 4c             	add    $0x4c,%esp
    13b0:	5b                   	pop    %ebx
    13b1:	5e                   	pop    %esi
    13b2:	5f                   	pop    %edi
    13b3:	5d                   	pop    %ebp
    13b4:	c3                   	ret    
    13b5:	e8 c6 12 00 00       	call   2680 <__stack_chk_fail_local>

000013ba <fun9>:
    13ba:	53                   	push   %ebx
    13bb:	83 ec 08             	sub    $0x8,%esp
    13be:	8b 54 24 10          	mov    0x10(%esp),%edx
    13c2:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    13c6:	85 d2                	test   %edx,%edx
    13c8:	74 3c                	je     1406 <fun9+0x4c>
    13ca:	8b 1a                	mov    (%edx),%ebx
    13cc:	39 cb                	cmp    %ecx,%ebx
    13ce:	7f 0e                	jg     13de <fun9+0x24>
    13d0:	b8 00 00 00 00       	mov    $0x0,%eax
    13d5:	39 cb                	cmp    %ecx,%ebx
    13d7:	75 18                	jne    13f1 <fun9+0x37>
    13d9:	83 c4 08             	add    $0x8,%esp
    13dc:	5b                   	pop    %ebx
    13dd:	c3                   	ret    
    13de:	83 ec 08             	sub    $0x8,%esp
    13e1:	51                   	push   %ecx
    13e2:	ff 72 04             	pushl  0x4(%edx)
    13e5:	e8 d0 ff ff ff       	call   13ba <fun9>
    13ea:	83 c4 10             	add    $0x10,%esp
    13ed:	01 c0                	add    %eax,%eax
    13ef:	eb e8                	jmp    13d9 <fun9+0x1f>
    13f1:	83 ec 08             	sub    $0x8,%esp
    13f4:	51                   	push   %ecx
    13f5:	ff 72 08             	pushl  0x8(%edx)
    13f8:	e8 bd ff ff ff       	call   13ba <fun9>
    13fd:	83 c4 10             	add    $0x10,%esp
    1400:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
    1404:	eb d3                	jmp    13d9 <fun9+0x1f>
    1406:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    140b:	eb cc                	jmp    13d9 <fun9+0x1f>

0000140d <phase_9>:
    140d:	56                   	push   %esi
    140e:	53                   	push   %ebx
    140f:	83 ec 08             	sub    $0x8,%esp
    1412:	e8 09 f8 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    1417:	81 c3 41 3b 00 00    	add    $0x3b41,%ebx
    141d:	6a 0a                	push   $0xa
    141f:	6a 00                	push   $0x0
    1421:	ff 74 24 1c          	pushl  0x1c(%esp)
    1425:	e8 56 f7 ff ff       	call   b80 <strtol@plt>
    142a:	89 c6                	mov    %eax,%esi
    142c:	8d 40 ff             	lea    -0x1(%eax),%eax
    142f:	83 c4 10             	add    $0x10,%esp
    1432:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1437:	77 23                	ja     145c <phase_9+0x4f>
    1439:	83 ec 08             	sub    $0x8,%esp
    143c:	56                   	push   %esi
    143d:	8d 83 4c 05 00 00    	lea    0x54c(%ebx),%eax
    1443:	50                   	push   %eax
    1444:	e8 71 ff ff ff       	call   13ba <fun9>
    1449:	83 c4 10             	add    $0x10,%esp
    144c:	83 f8 02             	cmp    $0x2,%eax
    144f:	74 05                	je     1456 <phase_9+0x49>
    1451:	e8 c7 03 00 00       	call   181d <explode_bomb>
    1456:	83 c4 04             	add    $0x4,%esp
    1459:	5b                   	pop    %ebx
    145a:	5e                   	pop    %esi
    145b:	c3                   	ret    
    145c:	e8 bc 03 00 00       	call   181d <explode_bomb>
    1461:	eb d6                	jmp    1439 <phase_9+0x2c>

00001463 <sig_handler>:
    1463:	53                   	push   %ebx
    1464:	83 ec 14             	sub    $0x14,%esp
    1467:	e8 b4 f7 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    146c:	81 c3 ec 3a 00 00    	add    $0x3aec,%ebx
    1472:	8d 83 88 d9 ff ff    	lea    -0x2678(%ebx),%eax
    1478:	50                   	push   %eax
    1479:	e8 32 f6 ff ff       	call   ab0 <puts@plt>
    147e:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
    1485:	e8 b6 f5 ff ff       	call   a40 <sleep@plt>
    148a:	83 c4 08             	add    $0x8,%esp
    148d:	8d 83 e5 da ff ff    	lea    -0x251b(%ebx),%eax
    1493:	50                   	push   %eax
    1494:	6a 01                	push   $0x1
    1496:	e8 a5 f6 ff ff       	call   b40 <__printf_chk@plt>
    149b:	83 c4 04             	add    $0x4,%esp
    149e:	8b 83 98 00 00 00    	mov    0x98(%ebx),%eax
    14a4:	ff 30                	pushl  (%eax)
    14a6:	e8 65 f5 ff ff       	call   a10 <fflush@plt>
    14ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    14b2:	e8 89 f5 ff ff       	call   a40 <sleep@plt>
    14b7:	8d 83 ed da ff ff    	lea    -0x2513(%ebx),%eax
    14bd:	89 04 24             	mov    %eax,(%esp)
    14c0:	e8 eb f5 ff ff       	call   ab0 <puts@plt>
    14c5:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
    14cc:	e8 ff f5 ff ff       	call   ad0 <exit@plt>

000014d1 <invalid_phase>:
    14d1:	53                   	push   %ebx
    14d2:	83 ec 0c             	sub    $0xc,%esp
    14d5:	e8 46 f7 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    14da:	81 c3 7e 3a 00 00    	add    $0x3a7e,%ebx
    14e0:	ff 74 24 14          	pushl  0x14(%esp)
    14e4:	8d 83 f5 da ff ff    	lea    -0x250b(%ebx),%eax
    14ea:	50                   	push   %eax
    14eb:	6a 01                	push   $0x1
    14ed:	e8 4e f6 ff ff       	call   b40 <__printf_chk@plt>
    14f2:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    14f9:	e8 d2 f5 ff ff       	call   ad0 <exit@plt>

000014fe <string_length>:
    14fe:	8b 54 24 04          	mov    0x4(%esp),%edx
    1502:	80 3a 00             	cmpb   $0x0,(%edx)
    1505:	74 10                	je     1517 <string_length+0x19>
    1507:	b8 00 00 00 00       	mov    $0x0,%eax
    150c:	83 c0 01             	add    $0x1,%eax
    150f:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    1513:	75 f7                	jne    150c <string_length+0xe>
    1515:	f3 c3                	repz ret 
    1517:	b8 00 00 00 00       	mov    $0x0,%eax
    151c:	c3                   	ret    

0000151d <strings_not_equal>:
    151d:	57                   	push   %edi
    151e:	56                   	push   %esi
    151f:	53                   	push   %ebx
    1520:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    1524:	8b 74 24 14          	mov    0x14(%esp),%esi
    1528:	53                   	push   %ebx
    1529:	e8 d0 ff ff ff       	call   14fe <string_length>
    152e:	89 c7                	mov    %eax,%edi
    1530:	89 34 24             	mov    %esi,(%esp)
    1533:	e8 c6 ff ff ff       	call   14fe <string_length>
    1538:	83 c4 04             	add    $0x4,%esp
    153b:	ba 01 00 00 00       	mov    $0x1,%edx
    1540:	39 c7                	cmp    %eax,%edi
    1542:	74 06                	je     154a <strings_not_equal+0x2d>
    1544:	89 d0                	mov    %edx,%eax
    1546:	5b                   	pop    %ebx
    1547:	5e                   	pop    %esi
    1548:	5f                   	pop    %edi
    1549:	c3                   	ret    
    154a:	0f b6 03             	movzbl (%ebx),%eax
    154d:	84 c0                	test   %al,%al
    154f:	74 23                	je     1574 <strings_not_equal+0x57>
    1551:	3a 06                	cmp    (%esi),%al
    1553:	75 26                	jne    157b <strings_not_equal+0x5e>
    1555:	83 c3 01             	add    $0x1,%ebx
    1558:	83 c6 01             	add    $0x1,%esi
    155b:	0f b6 03             	movzbl (%ebx),%eax
    155e:	84 c0                	test   %al,%al
    1560:	74 0b                	je     156d <strings_not_equal+0x50>
    1562:	38 06                	cmp    %al,(%esi)
    1564:	74 ef                	je     1555 <strings_not_equal+0x38>
    1566:	ba 01 00 00 00       	mov    $0x1,%edx
    156b:	eb d7                	jmp    1544 <strings_not_equal+0x27>
    156d:	ba 00 00 00 00       	mov    $0x0,%edx
    1572:	eb d0                	jmp    1544 <strings_not_equal+0x27>
    1574:	ba 00 00 00 00       	mov    $0x0,%edx
    1579:	eb c9                	jmp    1544 <strings_not_equal+0x27>
    157b:	ba 01 00 00 00       	mov    $0x1,%edx
    1580:	eb c2                	jmp    1544 <strings_not_equal+0x27>

00001582 <initialize_bomb>:
    1582:	57                   	push   %edi
    1583:	56                   	push   %esi
    1584:	53                   	push   %ebx
    1585:	81 ec 58 20 00 00    	sub    $0x2058,%esp
    158b:	e8 90 f6 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    1590:	81 c3 c8 39 00 00    	add    $0x39c8,%ebx
    1596:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    159c:	89 84 24 54 20 00 00 	mov    %eax,0x2054(%esp)
    15a3:	31 c0                	xor    %eax,%eax
    15a5:	8d 83 0b c5 ff ff    	lea    -0x3af5(%ebx),%eax
    15ab:	50                   	push   %eax
    15ac:	6a 02                	push   $0x2
    15ae:	e8 7d f4 ff ff       	call   a30 <signal@plt>
    15b3:	83 c4 08             	add    $0x8,%esp
    15b6:	6a 40                	push   $0x40
    15b8:	8d 44 24 18          	lea    0x18(%esp),%eax
    15bc:	50                   	push   %eax
    15bd:	e8 be f4 ff ff       	call   a80 <gethostname@plt>
    15c2:	83 c4 10             	add    $0x10,%esp
    15c5:	85 c0                	test   %eax,%eax
    15c7:	75 4a                	jne    1613 <initialize_bomb+0x91>
    15c9:	8b 83 e8 05 00 00    	mov    0x5e8(%ebx),%eax
    15cf:	8d b3 ec 05 00 00    	lea    0x5ec(%ebx),%esi
    15d5:	8d 7c 24 0c          	lea    0xc(%esp),%edi
    15d9:	85 c0                	test   %eax,%eax
    15db:	74 1b                	je     15f8 <initialize_bomb+0x76>
    15dd:	83 ec 08             	sub    $0x8,%esp
    15e0:	57                   	push   %edi
    15e1:	50                   	push   %eax
    15e2:	e8 19 f5 ff ff       	call   b00 <strcasecmp@plt>
    15e7:	83 c4 10             	add    $0x10,%esp
    15ea:	85 c0                	test   %eax,%eax
    15ec:	74 62                	je     1650 <initialize_bomb+0xce>
    15ee:	83 c6 04             	add    $0x4,%esi
    15f1:	8b 46 fc             	mov    -0x4(%esi),%eax
    15f4:	85 c0                	test   %eax,%eax
    15f6:	75 e5                	jne    15dd <initialize_bomb+0x5b>
    15f8:	83 ec 0c             	sub    $0xc,%esp
    15fb:	8d 83 f8 d9 ff ff    	lea    -0x2608(%ebx),%eax
    1601:	50                   	push   %eax
    1602:	e8 a9 f4 ff ff       	call   ab0 <puts@plt>
    1607:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    160e:	e8 bd f4 ff ff       	call   ad0 <exit@plt>
    1613:	83 ec 0c             	sub    $0xc,%esp
    1616:	8d 83 c0 d9 ff ff    	lea    -0x2640(%ebx),%eax
    161c:	50                   	push   %eax
    161d:	e8 8e f4 ff ff       	call   ab0 <puts@plt>
    1622:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    1629:	e8 a2 f4 ff ff       	call   ad0 <exit@plt>
    162e:	83 ec 04             	sub    $0x4,%esp
    1631:	8d 44 24 50          	lea    0x50(%esp),%eax
    1635:	50                   	push   %eax
    1636:	8d 83 06 db ff ff    	lea    -0x24fa(%ebx),%eax
    163c:	50                   	push   %eax
    163d:	6a 01                	push   $0x1
    163f:	e8 fc f4 ff ff       	call   b40 <__printf_chk@plt>
    1644:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    164b:	e8 80 f4 ff ff       	call   ad0 <exit@plt>
    1650:	83 ec 0c             	sub    $0xc,%esp
    1653:	8d 44 24 58          	lea    0x58(%esp),%eax
    1657:	50                   	push   %eax
    1658:	e8 23 0d 00 00       	call   2380 <init_driver>
    165d:	83 c4 10             	add    $0x10,%esp
    1660:	85 c0                	test   %eax,%eax
    1662:	78 ca                	js     162e <initialize_bomb+0xac>
    1664:	8b 84 24 4c 20 00 00 	mov    0x204c(%esp),%eax
    166b:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    1672:	75 0a                	jne    167e <initialize_bomb+0xfc>
    1674:	81 c4 50 20 00 00    	add    $0x2050,%esp
    167a:	5b                   	pop    %ebx
    167b:	5e                   	pop    %esi
    167c:	5f                   	pop    %edi
    167d:	c3                   	ret    
    167e:	e8 fd 0f 00 00       	call   2680 <__stack_chk_fail_local>

00001683 <initialize_bomb_solve>:
    1683:	f3 c3                	repz ret 

00001685 <blank_line>:
    1685:	57                   	push   %edi
    1686:	56                   	push   %esi
    1687:	53                   	push   %ebx
    1688:	e8 93 f5 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    168d:	81 c3 cb 38 00 00    	add    $0x38cb,%ebx
    1693:	8b 7c 24 10          	mov    0x10(%esp),%edi
    1697:	0f b6 37             	movzbl (%edi),%esi
    169a:	89 f0                	mov    %esi,%eax
    169c:	84 c0                	test   %al,%al
    169e:	74 1d                	je     16bd <blank_line+0x38>
    16a0:	e8 0b f5 ff ff       	call   bb0 <__ctype_b_loc@plt>
    16a5:	83 c7 01             	add    $0x1,%edi
    16a8:	89 f2                	mov    %esi,%edx
    16aa:	0f be f2             	movsbl %dl,%esi
    16ad:	8b 00                	mov    (%eax),%eax
    16af:	f6 44 70 01 20       	testb  $0x20,0x1(%eax,%esi,2)
    16b4:	75 e1                	jne    1697 <blank_line+0x12>
    16b6:	b8 00 00 00 00       	mov    $0x0,%eax
    16bb:	eb 05                	jmp    16c2 <blank_line+0x3d>
    16bd:	b8 01 00 00 00       	mov    $0x1,%eax
    16c2:	5b                   	pop    %ebx
    16c3:	5e                   	pop    %esi
    16c4:	5f                   	pop    %edi
    16c5:	c3                   	ret    

000016c6 <skip>:
    16c6:	55                   	push   %ebp
    16c7:	57                   	push   %edi
    16c8:	56                   	push   %esi
    16c9:	53                   	push   %ebx
    16ca:	83 ec 0c             	sub    $0xc,%esp
    16cd:	e8 4e f5 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    16d2:	81 c3 86 38 00 00    	add    $0x3886,%ebx
    16d8:	8d bb f0 07 00 00    	lea    0x7f0(%ebx),%edi
    16de:	8d b3 08 08 00 00    	lea    0x808(%ebx),%esi
    16e4:	83 ec 04             	sub    $0x4,%esp
    16e7:	ff 37                	pushl  (%edi)
    16e9:	6a 55                	push   $0x55
    16eb:	6b 83 ec 07 00 00 55 	imul   $0x55,0x7ec(%ebx),%eax
    16f2:	01 f0                	add    %esi,%eax
    16f4:	50                   	push   %eax
    16f5:	e8 26 f3 ff ff       	call   a20 <fgets@plt>
    16fa:	89 c5                	mov    %eax,%ebp
    16fc:	83 c4 10             	add    $0x10,%esp
    16ff:	85 c0                	test   %eax,%eax
    1701:	74 10                	je     1713 <skip+0x4d>
    1703:	83 ec 0c             	sub    $0xc,%esp
    1706:	50                   	push   %eax
    1707:	e8 79 ff ff ff       	call   1685 <blank_line>
    170c:	83 c4 10             	add    $0x10,%esp
    170f:	85 c0                	test   %eax,%eax
    1711:	75 d1                	jne    16e4 <skip+0x1e>
    1713:	89 e8                	mov    %ebp,%eax
    1715:	83 c4 0c             	add    $0xc,%esp
    1718:	5b                   	pop    %ebx
    1719:	5e                   	pop    %esi
    171a:	5f                   	pop    %edi
    171b:	5d                   	pop    %ebp
    171c:	c3                   	ret    

0000171d <send_msg>:
    171d:	55                   	push   %ebp
    171e:	57                   	push   %edi
    171f:	56                   	push   %esi
    1720:	53                   	push   %ebx
    1721:	81 ec 1c 40 00 00    	sub    $0x401c,%esp
    1727:	e8 f4 f4 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    172c:	81 c3 2c 38 00 00    	add    $0x382c,%ebx
    1732:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1738:	89 84 24 0c 40 00 00 	mov    %eax,0x400c(%esp)
    173f:	31 c0                	xor    %eax,%eax
    1741:	8b b3 ec 07 00 00    	mov    0x7ec(%ebx),%esi
    1747:	8d 56 ff             	lea    -0x1(%esi),%edx
    174a:	6b d2 55             	imul   $0x55,%edx,%edx
    174d:	03 93 84 00 00 00    	add    0x84(%ebx),%edx
    1753:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    1758:	89 d7                	mov    %edx,%edi
    175a:	f2 ae                	repnz scas %es:(%edi),%al
    175c:	89 c8                	mov    %ecx,%eax
    175e:	f7 d0                	not    %eax
    1760:	83 c0 63             	add    $0x63,%eax
    1763:	3d 00 20 00 00       	cmp    $0x2000,%eax
    1768:	77 75                	ja     17df <send_msg+0xc2>
    176a:	83 bc 24 30 40 00 00 	cmpl   $0x0,0x4030(%esp)
    1771:	00 
    1772:	8d 83 20 db ff ff    	lea    -0x24e0(%ebx),%eax
    1778:	8d 8b 28 db ff ff    	lea    -0x24d8(%ebx),%ecx
    177e:	0f 44 c1             	cmove  %ecx,%eax
    1781:	52                   	push   %edx
    1782:	56                   	push   %esi
    1783:	50                   	push   %eax
    1784:	8d 83 48 05 00 00    	lea    0x548(%ebx),%eax
    178a:	ff 30                	pushl  (%eax)
    178c:	8d 83 31 db ff ff    	lea    -0x24cf(%ebx),%eax
    1792:	50                   	push   %eax
    1793:	68 00 20 00 00       	push   $0x2000
    1798:	6a 01                	push   $0x1
    179a:	8d 74 24 28          	lea    0x28(%esp),%esi
    179e:	56                   	push   %esi
    179f:	e8 1c f4 ff ff       	call   bc0 <__sprintf_chk@plt>
    17a4:	83 c4 20             	add    $0x20,%esp
    17a7:	8d 84 24 0c 20 00 00 	lea    0x200c(%esp),%eax
    17ae:	50                   	push   %eax
    17af:	6a 00                	push   $0x0
    17b1:	56                   	push   %esi
    17b2:	ff b3 9c 00 00 00    	pushl  0x9c(%ebx)
    17b8:	e8 b7 0d 00 00       	call   2574 <driver_post>
    17bd:	83 c4 10             	add    $0x10,%esp
    17c0:	85 c0                	test   %eax,%eax
    17c2:	78 38                	js     17fc <send_msg+0xdf>
    17c4:	8b 84 24 0c 40 00 00 	mov    0x400c(%esp),%eax
    17cb:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
    17d2:	75 44                	jne    1818 <send_msg+0xfb>
    17d4:	81 c4 1c 40 00 00    	add    $0x401c,%esp
    17da:	5b                   	pop    %ebx
    17db:	5e                   	pop    %esi
    17dc:	5f                   	pop    %edi
    17dd:	5d                   	pop    %ebp
    17de:	c3                   	ret    
    17df:	83 ec 08             	sub    $0x8,%esp
    17e2:	8d 83 30 da ff ff    	lea    -0x25d0(%ebx),%eax
    17e8:	50                   	push   %eax
    17e9:	6a 01                	push   $0x1
    17eb:	e8 50 f3 ff ff       	call   b40 <__printf_chk@plt>
    17f0:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    17f7:	e8 d4 f2 ff ff       	call   ad0 <exit@plt>
    17fc:	83 ec 0c             	sub    $0xc,%esp
    17ff:	8d 84 24 18 20 00 00 	lea    0x2018(%esp),%eax
    1806:	50                   	push   %eax
    1807:	e8 a4 f2 ff ff       	call   ab0 <puts@plt>
    180c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1813:	e8 b8 f2 ff ff       	call   ad0 <exit@plt>
    1818:	e8 63 0e 00 00       	call   2680 <__stack_chk_fail_local>

0000181d <explode_bomb>:
    181d:	53                   	push   %ebx
    181e:	83 ec 14             	sub    $0x14,%esp
    1821:	e8 fa f3 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    1826:	81 c3 32 37 00 00    	add    $0x3732,%ebx
    182c:	8d 83 3d db ff ff    	lea    -0x24c3(%ebx),%eax
    1832:	50                   	push   %eax
    1833:	e8 78 f2 ff ff       	call   ab0 <puts@plt>
    1838:	8d 83 46 db ff ff    	lea    -0x24ba(%ebx),%eax
    183e:	89 04 24             	mov    %eax,(%esp)
    1841:	e8 6a f2 ff ff       	call   ab0 <puts@plt>
    1846:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    184d:	e8 cb fe ff ff       	call   171d <send_msg>
    1852:	8d 83 54 da ff ff    	lea    -0x25ac(%ebx),%eax
    1858:	89 04 24             	mov    %eax,(%esp)
    185b:	e8 50 f2 ff ff       	call   ab0 <puts@plt>
    1860:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    1867:	e8 64 f2 ff ff       	call   ad0 <exit@plt>

0000186c <read_six_numbers>:
    186c:	53                   	push   %ebx
    186d:	83 ec 08             	sub    $0x8,%esp
    1870:	e8 ab f3 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    1875:	81 c3 e3 36 00 00    	add    $0x36e3,%ebx
    187b:	8b 44 24 14          	mov    0x14(%esp),%eax
    187f:	8d 50 14             	lea    0x14(%eax),%edx
    1882:	52                   	push   %edx
    1883:	8d 50 10             	lea    0x10(%eax),%edx
    1886:	52                   	push   %edx
    1887:	8d 50 0c             	lea    0xc(%eax),%edx
    188a:	52                   	push   %edx
    188b:	8d 50 08             	lea    0x8(%eax),%edx
    188e:	52                   	push   %edx
    188f:	8d 50 04             	lea    0x4(%eax),%edx
    1892:	52                   	push   %edx
    1893:	50                   	push   %eax
    1894:	8d 83 5d db ff ff    	lea    -0x24a3(%ebx),%eax
    189a:	50                   	push   %eax
    189b:	ff 74 24 2c          	pushl  0x2c(%esp)
    189f:	e8 6c f2 ff ff       	call   b10 <__isoc99_sscanf@plt>
    18a4:	83 c4 20             	add    $0x20,%esp
    18a7:	83 f8 05             	cmp    $0x5,%eax
    18aa:	7e 05                	jle    18b1 <read_six_numbers+0x45>
    18ac:	83 c4 08             	add    $0x8,%esp
    18af:	5b                   	pop    %ebx
    18b0:	c3                   	ret    
    18b1:	e8 67 ff ff ff       	call   181d <explode_bomb>

000018b6 <read_line>:
    18b6:	55                   	push   %ebp
    18b7:	57                   	push   %edi
    18b8:	56                   	push   %esi
    18b9:	53                   	push   %ebx
    18ba:	83 ec 0c             	sub    $0xc,%esp
    18bd:	e8 5e f3 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    18c2:	81 c3 96 36 00 00    	add    $0x3696,%ebx
    18c8:	e8 f9 fd ff ff       	call   16c6 <skip>
    18cd:	85 c0                	test   %eax,%eax
    18cf:	74 4c                	je     191d <read_line+0x67>
    18d1:	8b 93 ec 07 00 00    	mov    0x7ec(%ebx),%edx
    18d7:	6b f2 55             	imul   $0x55,%edx,%esi
    18da:	03 b3 84 00 00 00    	add    0x84(%ebx),%esi
    18e0:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    18e5:	b8 00 00 00 00       	mov    $0x0,%eax
    18ea:	89 f7                	mov    %esi,%edi
    18ec:	f2 ae                	repnz scas %es:(%edi),%al
    18ee:	f7 d1                	not    %ecx
    18f0:	83 e9 01             	sub    $0x1,%ecx
    18f3:	83 f9 53             	cmp    $0x53,%ecx
    18f6:	0f 8f a6 00 00 00    	jg     19a2 <read_line+0xec>
    18fc:	6b c2 55             	imul   $0x55,%edx,%eax
    18ff:	03 83 84 00 00 00    	add    0x84(%ebx),%eax
    1905:	c6 44 01 ff 00       	movb   $0x0,-0x1(%ecx,%eax,1)
    190a:	83 c2 01             	add    $0x1,%edx
    190d:	89 93 ec 07 00 00    	mov    %edx,0x7ec(%ebx)
    1913:	89 f0                	mov    %esi,%eax
    1915:	83 c4 0c             	add    $0xc,%esp
    1918:	5b                   	pop    %ebx
    1919:	5e                   	pop    %esi
    191a:	5f                   	pop    %edi
    191b:	5d                   	pop    %ebp
    191c:	c3                   	ret    
    191d:	8d 93 f0 07 00 00    	lea    0x7f0(%ebx),%edx
    1923:	8b 83 94 00 00 00    	mov    0x94(%ebx),%eax
    1929:	8b 00                	mov    (%eax),%eax
    192b:	39 02                	cmp    %eax,(%edx)
    192d:	74 20                	je     194f <read_line+0x99>
    192f:	83 ec 0c             	sub    $0xc,%esp
    1932:	8d 83 8d db ff ff    	lea    -0x2473(%ebx),%eax
    1938:	50                   	push   %eax
    1939:	e8 52 f1 ff ff       	call   a90 <getenv@plt>
    193e:	83 c4 10             	add    $0x10,%esp
    1941:	85 c0                	test   %eax,%eax
    1943:	74 25                	je     196a <read_line+0xb4>
    1945:	83 ec 0c             	sub    $0xc,%esp
    1948:	6a 00                	push   $0x0
    194a:	e8 81 f1 ff ff       	call   ad0 <exit@plt>
    194f:	83 ec 0c             	sub    $0xc,%esp
    1952:	8d 83 6f db ff ff    	lea    -0x2491(%ebx),%eax
    1958:	50                   	push   %eax
    1959:	e8 52 f1 ff ff       	call   ab0 <puts@plt>
    195e:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    1965:	e8 66 f1 ff ff       	call   ad0 <exit@plt>
    196a:	8b 83 94 00 00 00    	mov    0x94(%ebx),%eax
    1970:	8b 10                	mov    (%eax),%edx
    1972:	8d 83 f0 07 00 00    	lea    0x7f0(%ebx),%eax
    1978:	89 10                	mov    %edx,(%eax)
    197a:	e8 47 fd ff ff       	call   16c6 <skip>
    197f:	85 c0                	test   %eax,%eax
    1981:	0f 85 4a ff ff ff    	jne    18d1 <read_line+0x1b>
    1987:	83 ec 0c             	sub    $0xc,%esp
    198a:	8d 83 6f db ff ff    	lea    -0x2491(%ebx),%eax
    1990:	50                   	push   %eax
    1991:	e8 1a f1 ff ff       	call   ab0 <puts@plt>
    1996:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    199d:	e8 2e f1 ff ff       	call   ad0 <exit@plt>
    19a2:	83 ec 0c             	sub    $0xc,%esp
    19a5:	8d 83 98 db ff ff    	lea    -0x2468(%ebx),%eax
    19ab:	50                   	push   %eax
    19ac:	e8 ff f0 ff ff       	call   ab0 <puts@plt>
    19b1:	8b 83 ec 07 00 00    	mov    0x7ec(%ebx),%eax
    19b7:	8d 50 01             	lea    0x1(%eax),%edx
    19ba:	89 93 ec 07 00 00    	mov    %edx,0x7ec(%ebx)
    19c0:	6b c0 55             	imul   $0x55,%eax,%eax
    19c3:	03 83 84 00 00 00    	add    0x84(%ebx),%eax
    19c9:	8d b3 b3 db ff ff    	lea    -0x244d(%ebx),%esi
    19cf:	b9 04 00 00 00       	mov    $0x4,%ecx
    19d4:	89 c7                	mov    %eax,%edi
    19d6:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    19d8:	e8 40 fe ff ff       	call   181d <explode_bomb>

000019dd <phase_defused>:
    19dd:	53                   	push   %ebx
    19de:	83 ec 14             	sub    $0x14,%esp
    19e1:	e8 3a f2 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    19e6:	81 c3 72 35 00 00    	add    $0x3572,%ebx
    19ec:	6a 01                	push   $0x1
    19ee:	e8 2a fd ff ff       	call   171d <send_msg>
    19f3:	83 c4 10             	add    $0x10,%esp
    19f6:	83 bb ec 07 00 00 09 	cmpl   $0x9,0x7ec(%ebx)
    19fd:	74 05                	je     1a04 <phase_defused+0x27>
    19ff:	83 c4 08             	add    $0x8,%esp
    1a02:	5b                   	pop    %ebx
    1a03:	c3                   	ret    
    1a04:	83 ec 0c             	sub    $0xc,%esp
    1a07:	8d 83 78 da ff ff    	lea    -0x2588(%ebx),%eax
    1a0d:	50                   	push   %eax
    1a0e:	e8 9d f0 ff ff       	call   ab0 <puts@plt>
    1a13:	8d 83 a4 da ff ff    	lea    -0x255c(%ebx),%eax
    1a19:	89 04 24             	mov    %eax,(%esp)
    1a1c:	e8 8f f0 ff ff       	call   ab0 <puts@plt>
    1a21:	83 c4 10             	add    $0x10,%esp
    1a24:	eb d9                	jmp    19ff <phase_defused+0x22>

00001a26 <sigalrm_handler>:
    1a26:	53                   	push   %ebx
    1a27:	83 ec 08             	sub    $0x8,%esp
    1a2a:	e8 f1 f1 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    1a2f:	81 c3 29 35 00 00    	add    $0x3529,%ebx
    1a35:	6a 00                	push   $0x0
    1a37:	8d 83 3c de ff ff    	lea    -0x21c4(%ebx),%eax
    1a3d:	50                   	push   %eax
    1a3e:	6a 01                	push   $0x1
    1a40:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
    1a46:	ff 30                	pushl  (%eax)
    1a48:	e8 13 f1 ff ff       	call   b60 <__fprintf_chk@plt>
    1a4d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a54:	e8 77 f0 ff ff       	call   ad0 <exit@plt>

00001a59 <rio_readlineb>:
    1a59:	55                   	push   %ebp
    1a5a:	57                   	push   %edi
    1a5b:	56                   	push   %esi
    1a5c:	53                   	push   %ebx
    1a5d:	83 ec 1c             	sub    $0x1c,%esp
    1a60:	e8 bb f1 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    1a65:	81 c3 f3 34 00 00    	add    $0x34f3,%ebx
    1a6b:	89 d5                	mov    %edx,%ebp
    1a6d:	83 f9 01             	cmp    $0x1,%ecx
    1a70:	0f 86 83 00 00 00    	jbe    1af9 <rio_readlineb+0xa0>
    1a76:	89 c6                	mov    %eax,%esi
    1a78:	8d 44 0a ff          	lea    -0x1(%edx,%ecx,1),%eax
    1a7c:	89 44 24 0c          	mov    %eax,0xc(%esp)
    1a80:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1a87:	00 
    1a88:	8d 7e 0c             	lea    0xc(%esi),%edi
    1a8b:	eb 0a                	jmp    1a97 <rio_readlineb+0x3e>
    1a8d:	e8 9e f0 ff ff       	call   b30 <__errno_location@plt>
    1a92:	83 38 04             	cmpl   $0x4,(%eax)
    1a95:	75 6c                	jne    1b03 <rio_readlineb+0xaa>
    1a97:	8b 46 04             	mov    0x4(%esi),%eax
    1a9a:	85 c0                	test   %eax,%eax
    1a9c:	7f 23                	jg     1ac1 <rio_readlineb+0x68>
    1a9e:	83 ec 04             	sub    $0x4,%esp
    1aa1:	68 00 20 00 00       	push   $0x2000
    1aa6:	57                   	push   %edi
    1aa7:	ff 36                	pushl  (%esi)
    1aa9:	e8 52 ef ff ff       	call   a00 <read@plt>
    1aae:	89 46 04             	mov    %eax,0x4(%esi)
    1ab1:	83 c4 10             	add    $0x10,%esp
    1ab4:	85 c0                	test   %eax,%eax
    1ab6:	78 d5                	js     1a8d <rio_readlineb+0x34>
    1ab8:	85 c0                	test   %eax,%eax
    1aba:	74 4e                	je     1b0a <rio_readlineb+0xb1>
    1abc:	89 7e 08             	mov    %edi,0x8(%esi)
    1abf:	eb d6                	jmp    1a97 <rio_readlineb+0x3e>
    1ac1:	8b 4e 08             	mov    0x8(%esi),%ecx
    1ac4:	0f b6 11             	movzbl (%ecx),%edx
    1ac7:	83 c1 01             	add    $0x1,%ecx
    1aca:	89 4e 08             	mov    %ecx,0x8(%esi)
    1acd:	83 e8 01             	sub    $0x1,%eax
    1ad0:	89 46 04             	mov    %eax,0x4(%esi)
    1ad3:	83 c5 01             	add    $0x1,%ebp
    1ad6:	88 55 ff             	mov    %dl,-0x1(%ebp)
    1ad9:	80 fa 0a             	cmp    $0xa,%dl
    1adc:	74 0b                	je     1ae9 <rio_readlineb+0x90>
    1ade:	83 44 24 08 01       	addl   $0x1,0x8(%esp)
    1ae3:	3b 6c 24 0c          	cmp    0xc(%esp),%ebp
    1ae7:	75 ae                	jne    1a97 <rio_readlineb+0x3e>
    1ae9:	c6 45 00 00          	movb   $0x0,0x0(%ebp)
    1aed:	8b 44 24 08          	mov    0x8(%esp),%eax
    1af1:	83 c4 1c             	add    $0x1c,%esp
    1af4:	5b                   	pop    %ebx
    1af5:	5e                   	pop    %esi
    1af6:	5f                   	pop    %edi
    1af7:	5d                   	pop    %ebp
    1af8:	c3                   	ret    
    1af9:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    1b00:	00 
    1b01:	eb e6                	jmp    1ae9 <rio_readlineb+0x90>
    1b03:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1b08:	eb 05                	jmp    1b0f <rio_readlineb+0xb6>
    1b0a:	b8 00 00 00 00       	mov    $0x0,%eax
    1b0f:	85 c0                	test   %eax,%eax
    1b11:	75 11                	jne    1b24 <rio_readlineb+0xcb>
    1b13:	83 7c 24 08 01       	cmpl   $0x1,0x8(%esp)
    1b18:	75 cf                	jne    1ae9 <rio_readlineb+0x90>
    1b1a:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    1b21:	00 
    1b22:	eb c9                	jmp    1aed <rio_readlineb+0x94>
    1b24:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    1b2b:	ff 
    1b2c:	eb bf                	jmp    1aed <rio_readlineb+0x94>

00001b2e <submitr>:
    1b2e:	55                   	push   %ebp
    1b2f:	57                   	push   %edi
    1b30:	56                   	push   %esi
    1b31:	53                   	push   %ebx
    1b32:	81 ec 60 a0 00 00    	sub    $0xa060,%esp
    1b38:	e8 e3 f0 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    1b3d:	81 c3 1b 34 00 00    	add    $0x341b,%ebx
    1b43:	8b bc 24 74 a0 00 00 	mov    0xa074(%esp),%edi
    1b4a:	8b 84 24 7c a0 00 00 	mov    0xa07c(%esp),%eax
    1b51:	89 44 24 10          	mov    %eax,0x10(%esp)
    1b55:	8b 84 24 80 a0 00 00 	mov    0xa080(%esp),%eax
    1b5c:	89 44 24 14          	mov    %eax,0x14(%esp)
    1b60:	8b 84 24 84 a0 00 00 	mov    0xa084(%esp),%eax
    1b67:	89 44 24 18          	mov    %eax,0x18(%esp)
    1b6b:	8b b4 24 88 a0 00 00 	mov    0xa088(%esp),%esi
    1b72:	8b 84 24 8c a0 00 00 	mov    0xa08c(%esp),%eax
    1b79:	89 44 24 1c          	mov    %eax,0x1c(%esp)
    1b7d:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    1b83:	89 84 24 50 a0 00 00 	mov    %eax,0xa050(%esp)
    1b8a:	31 c0                	xor    %eax,%eax
    1b8c:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
    1b93:	00 
    1b94:	6a 00                	push   $0x0
    1b96:	6a 01                	push   $0x1
    1b98:	6a 02                	push   $0x2
    1b9a:	e8 b1 ef ff ff       	call   b50 <socket@plt>
    1b9f:	89 44 24 18          	mov    %eax,0x18(%esp)
    1ba3:	83 c4 10             	add    $0x10,%esp
    1ba6:	85 c0                	test   %eax,%eax
    1ba8:	0f 88 14 01 00 00    	js     1cc2 <submitr+0x194>
    1bae:	83 ec 0c             	sub    $0xc,%esp
    1bb1:	57                   	push   %edi
    1bb2:	e8 b9 ef ff ff       	call   b70 <gethostbyname@plt>
    1bb7:	83 c4 10             	add    $0x10,%esp
    1bba:	85 c0                	test   %eax,%eax
    1bbc:	0f 84 52 01 00 00    	je     1d14 <submitr+0x1e6>
    1bc2:	8d 7c 24 30          	lea    0x30(%esp),%edi
    1bc6:	c7 44 24 32 00 00 00 	movl   $0x0,0x32(%esp)
    1bcd:	00 
    1bce:	c7 44 24 36 00 00 00 	movl   $0x0,0x36(%esp)
    1bd5:	00 
    1bd6:	c7 44 24 3a 00 00 00 	movl   $0x0,0x3a(%esp)
    1bdd:	00 
    1bde:	66 c7 44 24 3e 00 00 	movw   $0x0,0x3e(%esp)
    1be5:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%esp)
    1bec:	6a 0c                	push   $0xc
    1bee:	ff 70 0c             	pushl  0xc(%eax)
    1bf1:	8b 40 10             	mov    0x10(%eax),%eax
    1bf4:	ff 30                	pushl  (%eax)
    1bf6:	8d 44 24 40          	lea    0x40(%esp),%eax
    1bfa:	50                   	push   %eax
    1bfb:	e8 c0 ee ff ff       	call   ac0 <__memmove_chk@plt>
    1c00:	0f b7 84 24 84 a0 00 	movzwl 0xa084(%esp),%eax
    1c07:	00 
    1c08:	66 c1 c8 08          	ror    $0x8,%ax
    1c0c:	66 89 44 24 42       	mov    %ax,0x42(%esp)
    1c11:	83 c4 0c             	add    $0xc,%esp
    1c14:	6a 10                	push   $0x10
    1c16:	57                   	push   %edi
    1c17:	ff 74 24 14          	pushl  0x14(%esp)
    1c1b:	e8 70 ef ff ff       	call   b90 <connect@plt>
    1c20:	83 c4 10             	add    $0x10,%esp
    1c23:	85 c0                	test   %eax,%eax
    1c25:	0f 88 5c 01 00 00    	js     1d87 <submitr+0x259>
    1c2b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    1c30:	b8 00 00 00 00       	mov    $0x0,%eax
    1c35:	89 d1                	mov    %edx,%ecx
    1c37:	89 f7                	mov    %esi,%edi
    1c39:	f2 ae                	repnz scas %es:(%edi),%al
    1c3b:	f7 d1                	not    %ecx
    1c3d:	89 cd                	mov    %ecx,%ebp
    1c3f:	89 d1                	mov    %edx,%ecx
    1c41:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    1c45:	f2 ae                	repnz scas %es:(%edi),%al
    1c47:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    1c4b:	89 d1                	mov    %edx,%ecx
    1c4d:	8b 7c 24 10          	mov    0x10(%esp),%edi
    1c51:	f2 ae                	repnz scas %es:(%edi),%al
    1c53:	89 cf                	mov    %ecx,%edi
    1c55:	f7 d7                	not    %edi
    1c57:	89 7c 24 1c          	mov    %edi,0x1c(%esp)
    1c5b:	89 d1                	mov    %edx,%ecx
    1c5d:	8b 7c 24 14          	mov    0x14(%esp),%edi
    1c61:	f2 ae                	repnz scas %es:(%edi),%al
    1c63:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    1c67:	2b 54 24 04          	sub    0x4(%esp),%edx
    1c6b:	29 ca                	sub    %ecx,%edx
    1c6d:	8d 44 6d fd          	lea    -0x3(%ebp,%ebp,2),%eax
    1c71:	8d 44 02 7b          	lea    0x7b(%edx,%eax,1),%eax
    1c75:	3d 00 20 00 00       	cmp    $0x2000,%eax
    1c7a:	0f 87 6c 01 00 00    	ja     1dec <submitr+0x2be>
    1c80:	8d 94 24 4c 40 00 00 	lea    0x404c(%esp),%edx
    1c87:	b9 00 08 00 00       	mov    $0x800,%ecx
    1c8c:	b8 00 00 00 00       	mov    $0x0,%eax
    1c91:	89 d7                	mov    %edx,%edi
    1c93:	f3 ab                	rep stos %eax,%es:(%edi)
    1c95:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    1c9a:	89 f7                	mov    %esi,%edi
    1c9c:	f2 ae                	repnz scas %es:(%edi),%al
    1c9e:	89 ca                	mov    %ecx,%edx
    1ca0:	f7 d2                	not    %edx
    1ca2:	89 d1                	mov    %edx,%ecx
    1ca4:	83 e9 01             	sub    $0x1,%ecx
    1ca7:	89 4c 24 04          	mov    %ecx,0x4(%esp)
    1cab:	0f 84 23 06 00 00    	je     22d4 <submitr+0x7a6>
    1cb1:	8d ac 24 4c 40 00 00 	lea    0x404c(%esp),%ebp
    1cb8:	bf 01 00 00 00       	mov    $0x1,%edi
    1cbd:	e9 bc 01 00 00       	jmp    1e7e <submitr+0x350>
    1cc2:	8b 44 24 18          	mov    0x18(%esp),%eax
    1cc6:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    1ccc:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    1cd3:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    1cda:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    1ce1:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    1ce8:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    1cef:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
    1cf6:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
    1cfd:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
    1d04:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
    1d0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1d0f:	e9 d9 04 00 00       	jmp    21ed <submitr+0x6bf>
    1d14:	8b 44 24 18          	mov    0x18(%esp),%eax
    1d18:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    1d1e:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
    1d25:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
    1d2c:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
    1d33:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    1d3a:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    1d41:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
    1d48:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
    1d4f:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
    1d56:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
    1d5d:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
    1d64:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
    1d6a:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
    1d6e:	83 ec 0c             	sub    $0xc,%esp
    1d71:	ff 74 24 14          	pushl  0x14(%esp)
    1d75:	e8 26 ee ff ff       	call   ba0 <close@plt>
    1d7a:	83 c4 10             	add    $0x10,%esp
    1d7d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1d82:	e9 66 04 00 00       	jmp    21ed <submitr+0x6bf>
    1d87:	8b 44 24 18          	mov    0x18(%esp),%eax
    1d8b:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    1d91:	c7 40 04 72 3a 20 55 	movl   $0x55203a72,0x4(%eax)
    1d98:	c7 40 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%eax)
    1d9f:	c7 40 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%eax)
    1da6:	c7 40 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%eax)
    1dad:	c7 40 14 6e 65 63 74 	movl   $0x7463656e,0x14(%eax)
    1db4:	c7 40 18 20 74 6f 20 	movl   $0x206f7420,0x18(%eax)
    1dbb:	c7 40 1c 74 68 65 20 	movl   $0x20656874,0x1c(%eax)
    1dc2:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
    1dc9:	66 c7 40 24 65 72    	movw   $0x7265,0x24(%eax)
    1dcf:	c6 40 26 00          	movb   $0x0,0x26(%eax)
    1dd3:	83 ec 0c             	sub    $0xc,%esp
    1dd6:	ff 74 24 14          	pushl  0x14(%esp)
    1dda:	e8 c1 ed ff ff       	call   ba0 <close@plt>
    1ddf:	83 c4 10             	add    $0x10,%esp
    1de2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1de7:	e9 01 04 00 00       	jmp    21ed <submitr+0x6bf>
    1dec:	8b 44 24 18          	mov    0x18(%esp),%eax
    1df0:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    1df6:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
    1dfd:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
    1e04:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
    1e0b:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
    1e12:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
    1e19:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
    1e20:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
    1e27:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
    1e2e:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
    1e35:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
    1e3c:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
    1e43:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
    1e4a:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
    1e51:	83 ec 0c             	sub    $0xc,%esp
    1e54:	ff 74 24 14          	pushl  0x14(%esp)
    1e58:	e8 43 ed ff ff       	call   ba0 <close@plt>
    1e5d:	83 c4 10             	add    $0x10,%esp
    1e60:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1e65:	e9 83 03 00 00       	jmp    21ed <submitr+0x6bf>
    1e6a:	88 55 00             	mov    %dl,0x0(%ebp)
    1e6d:	8d 6d 01             	lea    0x1(%ebp),%ebp
    1e70:	83 c6 01             	add    $0x1,%esi
    1e73:	83 6c 24 04 01       	subl   $0x1,0x4(%esp)
    1e78:	0f 84 56 04 00 00    	je     22d4 <submitr+0x7a6>
    1e7e:	0f b6 16             	movzbl (%esi),%edx
    1e81:	8d 4a d6             	lea    -0x2a(%edx),%ecx
    1e84:	89 f8                	mov    %edi,%eax
    1e86:	80 f9 0f             	cmp    $0xf,%cl
    1e89:	77 0d                	ja     1e98 <submitr+0x36a>
    1e8b:	b8 d9 ff 00 00       	mov    $0xffd9,%eax
    1e90:	d3 e8                	shr    %cl,%eax
    1e92:	83 f0 01             	xor    $0x1,%eax
    1e95:	83 e0 01             	and    $0x1,%eax
    1e98:	84 c0                	test   %al,%al
    1e9a:	74 ce                	je     1e6a <submitr+0x33c>
    1e9c:	80 fa 5f             	cmp    $0x5f,%dl
    1e9f:	74 c9                	je     1e6a <submitr+0x33c>
    1ea1:	89 d0                	mov    %edx,%eax
    1ea3:	83 e0 df             	and    $0xffffffdf,%eax
    1ea6:	83 e8 41             	sub    $0x41,%eax
    1ea9:	3c 19                	cmp    $0x19,%al
    1eab:	76 bd                	jbe    1e6a <submitr+0x33c>
    1ead:	80 fa 20             	cmp    $0x20,%dl
    1eb0:	74 5b                	je     1f0d <submitr+0x3df>
    1eb2:	8d 42 e0             	lea    -0x20(%edx),%eax
    1eb5:	3c 5f                	cmp    $0x5f,%al
    1eb7:	76 09                	jbe    1ec2 <submitr+0x394>
    1eb9:	80 fa 09             	cmp    $0x9,%dl
    1ebc:	0f 85 c8 03 00 00    	jne    228a <submitr+0x75c>
    1ec2:	83 ec 0c             	sub    $0xc,%esp
    1ec5:	0f b6 d2             	movzbl %dl,%edx
    1ec8:	52                   	push   %edx
    1ec9:	8d 83 48 df ff ff    	lea    -0x20b8(%ebx),%eax
    1ecf:	50                   	push   %eax
    1ed0:	6a 08                	push   $0x8
    1ed2:	6a 01                	push   $0x1
    1ed4:	8d 84 24 68 80 00 00 	lea    0x8068(%esp),%eax
    1edb:	50                   	push   %eax
    1edc:	e8 df ec ff ff       	call   bc0 <__sprintf_chk@plt>
    1ee1:	0f b6 84 24 6c 80 00 	movzbl 0x806c(%esp),%eax
    1ee8:	00 
    1ee9:	88 45 00             	mov    %al,0x0(%ebp)
    1eec:	0f b6 84 24 6d 80 00 	movzbl 0x806d(%esp),%eax
    1ef3:	00 
    1ef4:	88 45 01             	mov    %al,0x1(%ebp)
    1ef7:	0f b6 84 24 6e 80 00 	movzbl 0x806e(%esp),%eax
    1efe:	00 
    1eff:	88 45 02             	mov    %al,0x2(%ebp)
    1f02:	83 c4 20             	add    $0x20,%esp
    1f05:	8d 6d 03             	lea    0x3(%ebp),%ebp
    1f08:	e9 63 ff ff ff       	jmp    1e70 <submitr+0x342>
    1f0d:	c6 45 00 2b          	movb   $0x2b,0x0(%ebp)
    1f11:	8d 6d 01             	lea    0x1(%ebp),%ebp
    1f14:	e9 57 ff ff ff       	jmp    1e70 <submitr+0x342>
    1f19:	01 c5                	add    %eax,%ebp
    1f1b:	29 c6                	sub    %eax,%esi
    1f1d:	74 27                	je     1f46 <submitr+0x418>
    1f1f:	83 ec 04             	sub    $0x4,%esp
    1f22:	56                   	push   %esi
    1f23:	55                   	push   %ebp
    1f24:	57                   	push   %edi
    1f25:	e8 c6 eb ff ff       	call   af0 <write@plt>
    1f2a:	83 c4 10             	add    $0x10,%esp
    1f2d:	85 c0                	test   %eax,%eax
    1f2f:	7f e8                	jg     1f19 <submitr+0x3eb>
    1f31:	e8 fa eb ff ff       	call   b30 <__errno_location@plt>
    1f36:	83 38 04             	cmpl   $0x4,(%eax)
    1f39:	0f 85 39 01 00 00    	jne    2078 <submitr+0x54a>
    1f3f:	b8 00 00 00 00       	mov    $0x0,%eax
    1f44:	eb d3                	jmp    1f19 <submitr+0x3eb>
    1f46:	8b 7c 24 04          	mov    0x4(%esp),%edi
    1f4a:	85 ff                	test   %edi,%edi
    1f4c:	0f 88 26 01 00 00    	js     2078 <submitr+0x54a>
    1f52:	8b 44 24 08          	mov    0x8(%esp),%eax
    1f56:	89 44 24 40          	mov    %eax,0x40(%esp)
    1f5a:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
    1f61:	00 
    1f62:	8d 44 24 40          	lea    0x40(%esp),%eax
    1f66:	8d 54 24 4c          	lea    0x4c(%esp),%edx
    1f6a:	89 54 24 48          	mov    %edx,0x48(%esp)
    1f6e:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
    1f75:	b9 00 20 00 00       	mov    $0x2000,%ecx
    1f7a:	e8 da fa ff ff       	call   1a59 <rio_readlineb>
    1f7f:	85 c0                	test   %eax,%eax
    1f81:	0f 8e 5a 01 00 00    	jle    20e1 <submitr+0x5b3>
    1f87:	83 ec 0c             	sub    $0xc,%esp
    1f8a:	8d 84 24 58 80 00 00 	lea    0x8058(%esp),%eax
    1f91:	50                   	push   %eax
    1f92:	8d 44 24 3c          	lea    0x3c(%esp),%eax
    1f96:	50                   	push   %eax
    1f97:	8d 84 24 60 60 00 00 	lea    0x6060(%esp),%eax
    1f9e:	50                   	push   %eax
    1f9f:	8d 83 4f df ff ff    	lea    -0x20b1(%ebx),%eax
    1fa5:	50                   	push   %eax
    1fa6:	8d 84 24 68 20 00 00 	lea    0x2068(%esp),%eax
    1fad:	50                   	push   %eax
    1fae:	e8 5d eb ff ff       	call   b10 <__isoc99_sscanf@plt>
    1fb3:	8b 44 24 4c          	mov    0x4c(%esp),%eax
    1fb7:	83 c4 20             	add    $0x20,%esp
    1fba:	3d c8 00 00 00       	cmp    $0xc8,%eax
    1fbf:	0f 85 99 01 00 00    	jne    215e <submitr+0x630>
    1fc5:	8d ac 24 4c 20 00 00 	lea    0x204c(%esp),%ebp
    1fcc:	8d 83 60 df ff ff    	lea    -0x20a0(%ebx),%eax
    1fd2:	89 44 24 04          	mov    %eax,0x4(%esp)
    1fd6:	b9 03 00 00 00       	mov    $0x3,%ecx
    1fdb:	89 ee                	mov    %ebp,%esi
    1fdd:	8b 7c 24 04          	mov    0x4(%esp),%edi
    1fe1:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
    1fe3:	0f 97 c0             	seta   %al
    1fe6:	1c 00                	sbb    $0x0,%al
    1fe8:	84 c0                	test   %al,%al
    1fea:	0f 84 a4 01 00 00    	je     2194 <submitr+0x666>
    1ff0:	8d 44 24 40          	lea    0x40(%esp),%eax
    1ff4:	b9 00 20 00 00       	mov    $0x2000,%ecx
    1ff9:	89 ea                	mov    %ebp,%edx
    1ffb:	e8 59 fa ff ff       	call   1a59 <rio_readlineb>
    2000:	85 c0                	test   %eax,%eax
    2002:	7f d2                	jg     1fd6 <submitr+0x4a8>
    2004:	8b 44 24 18          	mov    0x18(%esp),%eax
    2008:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    200e:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    2015:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    201c:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    2023:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    202a:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    2031:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
    2038:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
    203f:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
    2046:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
    204d:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
    2054:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
    205b:	c6 40 30 00          	movb   $0x0,0x30(%eax)
    205f:	83 ec 0c             	sub    $0xc,%esp
    2062:	ff 74 24 14          	pushl  0x14(%esp)
    2066:	e8 35 eb ff ff       	call   ba0 <close@plt>
    206b:	83 c4 10             	add    $0x10,%esp
    206e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2073:	e9 75 01 00 00       	jmp    21ed <submitr+0x6bf>
    2078:	8b 44 24 18          	mov    0x18(%esp),%eax
    207c:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    2082:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    2089:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    2090:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    2097:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    209e:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    20a5:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
    20ac:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
    20b3:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
    20ba:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
    20c1:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
    20c8:	83 ec 0c             	sub    $0xc,%esp
    20cb:	ff 74 24 14          	pushl  0x14(%esp)
    20cf:	e8 cc ea ff ff       	call   ba0 <close@plt>
    20d4:	83 c4 10             	add    $0x10,%esp
    20d7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    20dc:	e9 0c 01 00 00       	jmp    21ed <submitr+0x6bf>
    20e1:	8b 44 24 18          	mov    0x18(%esp),%eax
    20e5:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    20eb:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    20f2:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    20f9:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    2100:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    2107:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    210e:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
    2115:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
    211c:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
    2123:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
    212a:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
    2131:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
    2138:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
    213f:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
    2145:	83 ec 0c             	sub    $0xc,%esp
    2148:	ff 74 24 14          	pushl  0x14(%esp)
    214c:	e8 4f ea ff ff       	call   ba0 <close@plt>
    2151:	83 c4 10             	add    $0x10,%esp
    2154:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2159:	e9 8f 00 00 00       	jmp    21ed <submitr+0x6bf>
    215e:	83 ec 08             	sub    $0x8,%esp
    2161:	8d 94 24 54 80 00 00 	lea    0x8054(%esp),%edx
    2168:	52                   	push   %edx
    2169:	50                   	push   %eax
    216a:	8d 83 60 de ff ff    	lea    -0x21a0(%ebx),%eax
    2170:	50                   	push   %eax
    2171:	6a ff                	push   $0xffffffff
    2173:	6a 01                	push   $0x1
    2175:	ff 74 24 34          	pushl  0x34(%esp)
    2179:	e8 42 ea ff ff       	call   bc0 <__sprintf_chk@plt>
    217e:	83 c4 14             	add    $0x14,%esp
    2181:	ff 74 24 14          	pushl  0x14(%esp)
    2185:	e8 16 ea ff ff       	call   ba0 <close@plt>
    218a:	83 c4 10             	add    $0x10,%esp
    218d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2192:	eb 59                	jmp    21ed <submitr+0x6bf>
    2194:	8d 94 24 4c 20 00 00 	lea    0x204c(%esp),%edx
    219b:	8d 44 24 40          	lea    0x40(%esp),%eax
    219f:	b9 00 20 00 00       	mov    $0x2000,%ecx
    21a4:	e8 b0 f8 ff ff       	call   1a59 <rio_readlineb>
    21a9:	85 c0                	test   %eax,%eax
    21ab:	7e 5f                	jle    220c <submitr+0x6de>
    21ad:	83 ec 08             	sub    $0x8,%esp
    21b0:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
    21b7:	50                   	push   %eax
    21b8:	8b 74 24 24          	mov    0x24(%esp),%esi
    21bc:	56                   	push   %esi
    21bd:	e8 ae e8 ff ff       	call   a70 <strcpy@plt>
    21c2:	83 c4 04             	add    $0x4,%esp
    21c5:	ff 74 24 14          	pushl  0x14(%esp)
    21c9:	e8 d2 e9 ff ff       	call   ba0 <close@plt>
    21ce:	b9 03 00 00 00       	mov    $0x3,%ecx
    21d3:	8d bb 63 df ff ff    	lea    -0x209d(%ebx),%edi
    21d9:	f3 a6                	repz cmpsb %es:(%edi),%ds:(%esi)
    21db:	0f 97 c0             	seta   %al
    21de:	1c 00                	sbb    $0x0,%al
    21e0:	83 c4 10             	add    $0x10,%esp
    21e3:	84 c0                	test   %al,%al
    21e5:	0f 95 c0             	setne  %al
    21e8:	0f b6 c0             	movzbl %al,%eax
    21eb:	f7 d8                	neg    %eax
    21ed:	8b 9c 24 4c a0 00 00 	mov    0xa04c(%esp),%ebx
    21f4:	65 33 1d 14 00 00 00 	xor    %gs:0x14,%ebx
    21fb:	0f 85 36 01 00 00    	jne    2337 <submitr+0x809>
    2201:	81 c4 5c a0 00 00    	add    $0xa05c,%esp
    2207:	5b                   	pop    %ebx
    2208:	5e                   	pop    %esi
    2209:	5f                   	pop    %edi
    220a:	5d                   	pop    %ebp
    220b:	c3                   	ret    
    220c:	8b 44 24 18          	mov    0x18(%esp),%eax
    2210:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    2216:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    221d:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    2224:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    222b:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    2232:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    2239:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
    2240:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
    2247:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
    224e:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
    2255:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
    225c:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
    2263:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
    226a:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
    2271:	83 ec 0c             	sub    $0xc,%esp
    2274:	ff 74 24 14          	pushl  0x14(%esp)
    2278:	e8 23 e9 ff ff       	call   ba0 <close@plt>
    227d:	83 c4 10             	add    $0x10,%esp
    2280:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2285:	e9 63 ff ff ff       	jmp    21ed <submitr+0x6bf>
    228a:	8b 83 90 de ff ff    	mov    -0x2170(%ebx),%eax
    2290:	8b 74 24 18          	mov    0x18(%esp),%esi
    2294:	89 06                	mov    %eax,(%esi)
    2296:	8b 83 cf de ff ff    	mov    -0x2131(%ebx),%eax
    229c:	89 46 3f             	mov    %eax,0x3f(%esi)
    229f:	89 f0                	mov    %esi,%eax
    22a1:	8d 7e 04             	lea    0x4(%esi),%edi
    22a4:	83 e7 fc             	and    $0xfffffffc,%edi
    22a7:	29 f8                	sub    %edi,%eax
    22a9:	8d b3 90 de ff ff    	lea    -0x2170(%ebx),%esi
    22af:	29 c6                	sub    %eax,%esi
    22b1:	83 c0 43             	add    $0x43,%eax
    22b4:	c1 e8 02             	shr    $0x2,%eax
    22b7:	89 c1                	mov    %eax,%ecx
    22b9:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    22bb:	83 ec 0c             	sub    $0xc,%esp
    22be:	ff 74 24 14          	pushl  0x14(%esp)
    22c2:	e8 d9 e8 ff ff       	call   ba0 <close@plt>
    22c7:	83 c4 10             	add    $0x10,%esp
    22ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    22cf:	e9 19 ff ff ff       	jmp    21ed <submitr+0x6bf>
    22d4:	8d 84 24 4c 40 00 00 	lea    0x404c(%esp),%eax
    22db:	50                   	push   %eax
    22dc:	ff 74 24 18          	pushl  0x18(%esp)
    22e0:	ff 74 24 18          	pushl  0x18(%esp)
    22e4:	ff 74 24 18          	pushl  0x18(%esp)
    22e8:	8d 83 d4 de ff ff    	lea    -0x212c(%ebx),%eax
    22ee:	50                   	push   %eax
    22ef:	68 00 20 00 00       	push   $0x2000
    22f4:	6a 01                	push   $0x1
    22f6:	8d bc 24 68 20 00 00 	lea    0x2068(%esp),%edi
    22fd:	57                   	push   %edi
    22fe:	e8 bd e8 ff ff       	call   bc0 <__sprintf_chk@plt>
    2303:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    2308:	b8 00 00 00 00       	mov    $0x0,%eax
    230d:	f2 ae                	repnz scas %es:(%edi),%al
    230f:	89 cf                	mov    %ecx,%edi
    2311:	f7 d7                	not    %edi
    2313:	83 ef 01             	sub    $0x1,%edi
    2316:	83 c4 20             	add    $0x20,%esp
    2319:	89 fe                	mov    %edi,%esi
    231b:	8d ac 24 4c 20 00 00 	lea    0x204c(%esp),%ebp
    2322:	85 ff                	test   %edi,%edi
    2324:	0f 84 28 fc ff ff    	je     1f52 <submitr+0x424>
    232a:	89 7c 24 04          	mov    %edi,0x4(%esp)
    232e:	8b 7c 24 08          	mov    0x8(%esp),%edi
    2332:	e9 e8 fb ff ff       	jmp    1f1f <submitr+0x3f1>
    2337:	e8 44 03 00 00       	call   2680 <__stack_chk_fail_local>

0000233c <init_timeout>:
    233c:	56                   	push   %esi
    233d:	53                   	push   %ebx
    233e:	83 ec 04             	sub    $0x4,%esp
    2341:	e8 da e8 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    2346:	81 c3 12 2c 00 00    	add    $0x2c12,%ebx
    234c:	8b 74 24 10          	mov    0x10(%esp),%esi
    2350:	85 f6                	test   %esi,%esi
    2352:	74 26                	je     237a <init_timeout+0x3e>
    2354:	83 ec 08             	sub    $0x8,%esp
    2357:	8d 83 ce ca ff ff    	lea    -0x3532(%ebx),%eax
    235d:	50                   	push   %eax
    235e:	6a 0e                	push   $0xe
    2360:	e8 cb e6 ff ff       	call   a30 <signal@plt>
    2365:	85 f6                	test   %esi,%esi
    2367:	b8 00 00 00 00       	mov    $0x0,%eax
    236c:	0f 48 f0             	cmovs  %eax,%esi
    236f:	89 34 24             	mov    %esi,(%esp)
    2372:	e8 d9 e6 ff ff       	call   a50 <alarm@plt>
    2377:	83 c4 10             	add    $0x10,%esp
    237a:	83 c4 04             	add    $0x4,%esp
    237d:	5b                   	pop    %ebx
    237e:	5e                   	pop    %esi
    237f:	c3                   	ret    

00002380 <init_driver>:
    2380:	55                   	push   %ebp
    2381:	57                   	push   %edi
    2382:	56                   	push   %esi
    2383:	53                   	push   %ebx
    2384:	83 ec 34             	sub    $0x34,%esp
    2387:	e8 94 e8 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    238c:	81 c3 cc 2b 00 00    	add    $0x2bcc,%ebx
    2392:	8b 7c 24 48          	mov    0x48(%esp),%edi
    2396:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
    239c:	89 44 24 24          	mov    %eax,0x24(%esp)
    23a0:	31 c0                	xor    %eax,%eax
    23a2:	6a 01                	push   $0x1
    23a4:	6a 0d                	push   $0xd
    23a6:	e8 85 e6 ff ff       	call   a30 <signal@plt>
    23ab:	83 c4 08             	add    $0x8,%esp
    23ae:	6a 01                	push   $0x1
    23b0:	6a 1d                	push   $0x1d
    23b2:	e8 79 e6 ff ff       	call   a30 <signal@plt>
    23b7:	83 c4 08             	add    $0x8,%esp
    23ba:	6a 01                	push   $0x1
    23bc:	6a 1d                	push   $0x1d
    23be:	e8 6d e6 ff ff       	call   a30 <signal@plt>
    23c3:	83 c4 0c             	add    $0xc,%esp
    23c6:	6a 00                	push   $0x0
    23c8:	6a 01                	push   $0x1
    23ca:	6a 02                	push   $0x2
    23cc:	e8 7f e7 ff ff       	call   b50 <socket@plt>
    23d1:	83 c4 10             	add    $0x10,%esp
    23d4:	85 c0                	test   %eax,%eax
    23d6:	0f 88 ab 00 00 00    	js     2487 <init_driver+0x107>
    23dc:	89 c6                	mov    %eax,%esi
    23de:	83 ec 0c             	sub    $0xc,%esp
    23e1:	8d 83 66 df ff ff    	lea    -0x209a(%ebx),%eax
    23e7:	50                   	push   %eax
    23e8:	e8 83 e7 ff ff       	call   b70 <gethostbyname@plt>
    23ed:	83 c4 10             	add    $0x10,%esp
    23f0:	85 c0                	test   %eax,%eax
    23f2:	0f 84 da 00 00 00    	je     24d2 <init_driver+0x152>
    23f8:	8d 6c 24 0c          	lea    0xc(%esp),%ebp
    23fc:	c7 44 24 0e 00 00 00 	movl   $0x0,0xe(%esp)
    2403:	00 
    2404:	c7 44 24 12 00 00 00 	movl   $0x0,0x12(%esp)
    240b:	00 
    240c:	c7 44 24 16 00 00 00 	movl   $0x0,0x16(%esp)
    2413:	00 
    2414:	66 c7 44 24 1a 00 00 	movw   $0x0,0x1a(%esp)
    241b:	66 c7 44 24 0c 02 00 	movw   $0x2,0xc(%esp)
    2422:	6a 0c                	push   $0xc
    2424:	ff 70 0c             	pushl  0xc(%eax)
    2427:	8b 40 10             	mov    0x10(%eax),%eax
    242a:	ff 30                	pushl  (%eax)
    242c:	8d 44 24 1c          	lea    0x1c(%esp),%eax
    2430:	50                   	push   %eax
    2431:	e8 8a e6 ff ff       	call   ac0 <__memmove_chk@plt>
    2436:	66 c7 44 24 1e 3b 6c 	movw   $0x6c3b,0x1e(%esp)
    243d:	83 c4 0c             	add    $0xc,%esp
    2440:	6a 10                	push   $0x10
    2442:	55                   	push   %ebp
    2443:	56                   	push   %esi
    2444:	e8 47 e7 ff ff       	call   b90 <connect@plt>
    2449:	83 c4 10             	add    $0x10,%esp
    244c:	85 c0                	test   %eax,%eax
    244e:	0f 88 ea 00 00 00    	js     253e <init_driver+0x1be>
    2454:	83 ec 0c             	sub    $0xc,%esp
    2457:	56                   	push   %esi
    2458:	e8 43 e7 ff ff       	call   ba0 <close@plt>
    245d:	66 c7 07 4f 4b       	movw   $0x4b4f,(%edi)
    2462:	c6 47 02 00          	movb   $0x0,0x2(%edi)
    2466:	83 c4 10             	add    $0x10,%esp
    2469:	b8 00 00 00 00       	mov    $0x0,%eax
    246e:	8b 54 24 1c          	mov    0x1c(%esp),%edx
    2472:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
    2479:	0f 85 f0 00 00 00    	jne    256f <init_driver+0x1ef>
    247f:	83 c4 2c             	add    $0x2c,%esp
    2482:	5b                   	pop    %ebx
    2483:	5e                   	pop    %esi
    2484:	5f                   	pop    %edi
    2485:	5d                   	pop    %ebp
    2486:	c3                   	ret    
    2487:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
    248d:	c7 47 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edi)
    2494:	c7 47 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edi)
    249b:	c7 47 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edi)
    24a2:	c7 47 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edi)
    24a9:	c7 47 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edi)
    24b0:	c7 47 18 63 72 65 61 	movl   $0x61657263,0x18(%edi)
    24b7:	c7 47 1c 74 65 20 73 	movl   $0x73206574,0x1c(%edi)
    24be:	c7 47 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%edi)
    24c5:	66 c7 47 24 74 00    	movw   $0x74,0x24(%edi)
    24cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24d0:	eb 9c                	jmp    246e <init_driver+0xee>
    24d2:	c7 07 45 72 72 6f    	movl   $0x6f727245,(%edi)
    24d8:	c7 47 04 72 3a 20 44 	movl   $0x44203a72,0x4(%edi)
    24df:	c7 47 08 4e 53 20 69 	movl   $0x6920534e,0x8(%edi)
    24e6:	c7 47 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%edi)
    24ed:	c7 47 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edi)
    24f4:	c7 47 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edi)
    24fb:	c7 47 18 72 65 73 6f 	movl   $0x6f736572,0x18(%edi)
    2502:	c7 47 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%edi)
    2509:	c7 47 20 73 65 72 76 	movl   $0x76726573,0x20(%edi)
    2510:	c7 47 24 65 72 20 61 	movl   $0x61207265,0x24(%edi)
    2517:	c7 47 28 64 64 72 65 	movl   $0x65726464,0x28(%edi)
    251e:	66 c7 47 2c 73 73    	movw   $0x7373,0x2c(%edi)
    2524:	c6 47 2e 00          	movb   $0x0,0x2e(%edi)
    2528:	83 ec 0c             	sub    $0xc,%esp
    252b:	56                   	push   %esi
    252c:	e8 6f e6 ff ff       	call   ba0 <close@plt>
    2531:	83 c4 10             	add    $0x10,%esp
    2534:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2539:	e9 30 ff ff ff       	jmp    246e <init_driver+0xee>
    253e:	83 ec 0c             	sub    $0xc,%esp
    2541:	8d 83 66 df ff ff    	lea    -0x209a(%ebx),%eax
    2547:	50                   	push   %eax
    2548:	8d 83 20 df ff ff    	lea    -0x20e0(%ebx),%eax
    254e:	50                   	push   %eax
    254f:	6a ff                	push   $0xffffffff
    2551:	6a 01                	push   $0x1
    2553:	57                   	push   %edi
    2554:	e8 67 e6 ff ff       	call   bc0 <__sprintf_chk@plt>
    2559:	83 c4 14             	add    $0x14,%esp
    255c:	56                   	push   %esi
    255d:	e8 3e e6 ff ff       	call   ba0 <close@plt>
    2562:	83 c4 10             	add    $0x10,%esp
    2565:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    256a:	e9 ff fe ff ff       	jmp    246e <init_driver+0xee>
    256f:	e8 0c 01 00 00       	call   2680 <__stack_chk_fail_local>

00002574 <driver_post>:
    2574:	56                   	push   %esi
    2575:	53                   	push   %ebx
    2576:	83 ec 04             	sub    $0x4,%esp
    2579:	e8 a2 e6 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    257e:	81 c3 da 29 00 00    	add    $0x29da,%ebx
    2584:	8b 54 24 10          	mov    0x10(%esp),%edx
    2588:	8b 44 24 18          	mov    0x18(%esp),%eax
    258c:	8b 74 24 1c          	mov    0x1c(%esp),%esi
    2590:	85 c0                	test   %eax,%eax
    2592:	75 18                	jne    25ac <driver_post+0x38>
    2594:	85 d2                	test   %edx,%edx
    2596:	74 05                	je     259d <driver_post+0x29>
    2598:	80 3a 00             	cmpb   $0x0,(%edx)
    259b:	75 37                	jne    25d4 <driver_post+0x60>
    259d:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
    25a2:	c6 46 02 00          	movb   $0x0,0x2(%esi)
    25a6:	83 c4 04             	add    $0x4,%esp
    25a9:	5b                   	pop    %ebx
    25aa:	5e                   	pop    %esi
    25ab:	c3                   	ret    
    25ac:	83 ec 04             	sub    $0x4,%esp
    25af:	ff 74 24 18          	pushl  0x18(%esp)
    25b3:	8d 83 7b df ff ff    	lea    -0x2085(%ebx),%eax
    25b9:	50                   	push   %eax
    25ba:	6a 01                	push   $0x1
    25bc:	e8 7f e5 ff ff       	call   b40 <__printf_chk@plt>
    25c1:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
    25c6:	c6 46 02 00          	movb   $0x0,0x2(%esi)
    25ca:	83 c4 10             	add    $0x10,%esp
    25cd:	b8 00 00 00 00       	mov    $0x0,%eax
    25d2:	eb d2                	jmp    25a6 <driver_post+0x32>
    25d4:	83 ec 04             	sub    $0x4,%esp
    25d7:	56                   	push   %esi
    25d8:	ff 74 24 1c          	pushl  0x1c(%esp)
    25dc:	8d 83 92 df ff ff    	lea    -0x206e(%ebx),%eax
    25e2:	50                   	push   %eax
    25e3:	52                   	push   %edx
    25e4:	8d 83 a1 df ff ff    	lea    -0x205f(%ebx),%eax
    25ea:	50                   	push   %eax
    25eb:	68 6c 3b 00 00       	push   $0x3b6c
    25f0:	8d 83 66 df ff ff    	lea    -0x209a(%ebx),%eax
    25f6:	50                   	push   %eax
    25f7:	e8 32 f5 ff ff       	call   1b2e <submitr>
    25fc:	83 c4 20             	add    $0x20,%esp
    25ff:	eb a5                	jmp    25a6 <driver_post+0x32>
    2601:	66 90                	xchg   %ax,%ax
    2603:	66 90                	xchg   %ax,%ax
    2605:	66 90                	xchg   %ax,%ax
    2607:	66 90                	xchg   %ax,%ax
    2609:	66 90                	xchg   %ax,%ax
    260b:	66 90                	xchg   %ax,%ax
    260d:	66 90                	xchg   %ax,%ax
    260f:	90                   	nop

00002610 <__libc_csu_init>:
    2610:	55                   	push   %ebp
    2611:	57                   	push   %edi
    2612:	56                   	push   %esi
    2613:	53                   	push   %ebx
    2614:	e8 07 e6 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    2619:	81 c3 3f 29 00 00    	add    $0x293f,%ebx
    261f:	83 ec 0c             	sub    $0xc,%esp
    2622:	8b 6c 24 28          	mov    0x28(%esp),%ebp
    2626:	8d b3 04 ff ff ff    	lea    -0xfc(%ebx),%esi
    262c:	e8 8f e3 ff ff       	call   9c0 <_init>
    2631:	8d 83 00 ff ff ff    	lea    -0x100(%ebx),%eax
    2637:	29 c6                	sub    %eax,%esi
    2639:	c1 fe 02             	sar    $0x2,%esi
    263c:	85 f6                	test   %esi,%esi
    263e:	74 25                	je     2665 <__libc_csu_init+0x55>
    2640:	31 ff                	xor    %edi,%edi
    2642:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2648:	83 ec 04             	sub    $0x4,%esp
    264b:	55                   	push   %ebp
    264c:	ff 74 24 2c          	pushl  0x2c(%esp)
    2650:	ff 74 24 2c          	pushl  0x2c(%esp)
    2654:	ff 94 bb 00 ff ff ff 	call   *-0x100(%ebx,%edi,4)
    265b:	83 c7 01             	add    $0x1,%edi
    265e:	83 c4 10             	add    $0x10,%esp
    2661:	39 fe                	cmp    %edi,%esi
    2663:	75 e3                	jne    2648 <__libc_csu_init+0x38>
    2665:	83 c4 0c             	add    $0xc,%esp
    2668:	5b                   	pop    %ebx
    2669:	5e                   	pop    %esi
    266a:	5f                   	pop    %edi
    266b:	5d                   	pop    %ebp
    266c:	c3                   	ret    
    266d:	8d 76 00             	lea    0x0(%esi),%esi

00002670 <__libc_csu_fini>:
    2670:	f3 c3                	repz ret 
    2672:	66 90                	xchg   %ax,%ax
    2674:	66 90                	xchg   %ax,%ax
    2676:	66 90                	xchg   %ax,%ax
    2678:	66 90                	xchg   %ax,%ax
    267a:	66 90                	xchg   %ax,%ax
    267c:	66 90                	xchg   %ax,%ax
    267e:	66 90                	xchg   %ax,%ax

00002680 <__stack_chk_fail_local>:
    2680:	53                   	push   %ebx
    2681:	e8 9a e5 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    2686:	81 c3 d2 28 00 00    	add    $0x28d2,%ebx
    268c:	83 ec 08             	sub    $0x8,%esp
    268f:	e8 cc e3 ff ff       	call   a60 <__stack_chk_fail@plt>

Disassembly of section .fini:

00002694 <_fini>:
    2694:	53                   	push   %ebx
    2695:	83 ec 08             	sub    $0x8,%esp
    2698:	e8 83 e5 ff ff       	call   c20 <__x86.get_pc_thunk.bx>
    269d:	81 c3 bb 28 00 00    	add    $0x28bb,%ebx
    26a3:	83 c4 08             	add    $0x8,%esp
    26a6:	5b                   	pop    %ebx
    26a7:	c3                   	ret    
