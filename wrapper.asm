EXTERN HijackLogic: PROC		; �����ⲿ����

EXTERN g_transfer_zone: QWORD	; �����ⲿ����

.CODE

; ջ���룺�� 64 λģʽ�£����ú���ʱջ������ 16 �ֽڶ����
HijackLogicWarpper PROC
    push rbx                                ; ѹ��ͨ�üĴ���
    push rcx
    push rdx
    push rsi
    push rdi
    push rbp
    push r8
    push r9
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15
    pushfq                                  ; ѹ��eflags

	sub rsp, 28h							; ջ����
    mov rcx, r9                             ; ���� ����Ϊ��������arg4
	call HijackLogic						; ����HijackLogic �޸�KeyClass�ڴ�
    add rsp, 28h							; �ָ�ջ
	
    popfq                                   ; �ָ�eflags
    pop r15
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rbp  
    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rbx                                 ; �ָ�ͨ�üĴ���   

    mov rax, qword ptr [g_transfer_zone]	; rax��ֵg_transfer_zone
    jmp rax                                 ; ��ת��ת�ڴ�ִ��ԭָ��
HijackLogicWarpper ENDP
 
END