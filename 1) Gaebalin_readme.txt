* ������ �ͽ���Ʈ�� ��� ������ ���� ���� ���̳������� �ͽ���Ʈ�ϹǷ� ����Ʈ�ؼ� �����ų���� ������
�������ֽñ� �ٶ��ϴ�.
������ �ȳ��� ��� ���� �����信�� Modules�� Ŭ���� �� �ش� ���丮 ��θ� �⺻ ���('/')�� ���ֽñ� �ٶ��ϴ�.

1. ������ ���� ȯ�� = JAVA SDK 1.8, ORACLE 12c, TOMCAT 9.0 , eclipse IDE

2. ���� ��� = Spring MVC, Mybatis, JAVA, JSP, HTML, CSS, BootStrap, Jquery(AJAX, JSON) , OracleDB

3. Oracle12c�� ���� �ο�
���� ������ ���� �ʱ� ����
alter session set "_ORACLE_SCRIPT"=true;

3-1.���� ���� �� ���� �ο�

CREATE USER gaebalin IDENTIFIED BY gaebalin;
  GRANT CONNECT, RESOURCE TO gaebalin;
  GRANT ALTER SESSION TO gaebalin;
  GRANT UNLIMITED TABLTSPACE TO gaebalin;

3-2. SQL ������ ������ ���� ��� ���� ��찡 �ƴ϶�� ������ �����ߴٰ� �ٽ� ���� ������ �ִ°� ����.

cmdâ����
sqlplus system/System1234
DROP USER gaebalin cascade;
CREATE USER gaebalin IDENTIFIED BY gaebalin;
GRANT CONNECT, RESOURCE TO gaebalin;
GRANT ALTER SESSION TO gaebalin;
GRANT UNLIMITED TABLTSPACE TO gaebalin;

4. gaebalin.sql������ �������� gaebalin/gaebalin ������ ��� commit �ؾ���

7. ȸ�� �̹��� ���.

   workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\gaebalin\userImg

   => �̹����� ������ ���ε�Ǿ� �ֽ��ϴ�.(refresh ���� �ذ�)

   => ���ÿ����� Ȯ���� �� �����ϴ� (���� ���õ����ʹ� Ȯ�ΰ�����)

8. ���뽺ũ��Ʈ ���� = common.js (index.html �����ؼ� ����)

9. Login

   1) ������(A) ���� = ���̵� : admin, ��й�ȣ : admin

   2) �Ϲ����� ���� = ���̵� : user, ��й�ȣ : user

   3) �׿� TB_COM_USER ���̺��� ��ȸ�Ͽ� �����Ͻø� �˴ϴ�.

   4) ���� ���������� SQL �������Ͽ� �ֽ��ϴ�.


10. ������ Ŀ�´�Ƽ ������ WebSite �ֿ��� �� ���

   1) ����

     �� �α���(IDã��, �н�����ã��) / �α׾ƿ�
    
     �� ȸ������, ȸ������ ����
  
     �� ������ �˻� �� ����¡(BootStrap ���̺��̿�)

   2) �����

     �� ��ǰ����(�ٷα���, ��ٱ���)

     �� ��ǰ���� �� �ֹ���Ȯ��

     �� ��ǰ���� �� ��۵�� �� ����(����� ������ ��� UI), �������(����� UI ���)

     �� ���ų���

     �� ��ٱ���(��ٱ��Ͽ��� �ٷα��� ���, ����Ʈ �������)

   3) ������

     �� ������(���ο� ��ǰ ��� �� ����)

     �� �������(��ǰ ī�װ���, �׸� ���� ���)

     �� �����Ȳ(ī�װ��� �����Ȳ, ��ǰ �Ǹ���Ȳ ���)

11. ������ ���α׷� ���� Description

  1) �⺻ �����ӿ�ũ�� Spring�̸�, Tomcat, OracleDB ���� ����մϴ�.

  2) JAVA (Controller, Service, ServiceImpl, Bean) + xml(mybatis)�� Set ����
 
  3) ȭ����� JSP(BootStrap �̿�)

  4) Sciprt�� jQuery �ټ� ����

  5) �Է´� validation üũ : ����(common.js), �ҽ��м�����

    [�Է´� validation�� ȭ�鸶�� ����ó���� �����ϰ� �������]

12. common.js(jquery����) �ֿ���

  1) �Է´� �ڷΰ��� ��ư ����

  2) �α���üũ

  3) validation�ڵ�üũ(��׶��忡 �ִϸ��̼� ȿ��(red))

  4) �Է´� �ʼ���ǥ��(required�Ӽ��̿�(HTML5)) �մܿ� ����*ǥ��

  5) ���� �Է´ܿ� �����̿� Ÿ���� ����

13. �ֿ��� 

  1) �񵿱� ���� ���ε�

  2) �񵿱� JSON  ó��

  3) ũ�Ѹ� ������ : ��� ������ �̿�

  4) ������ �̹��� �з� ������ : �ö�ũ ������ �̿�