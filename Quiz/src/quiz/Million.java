/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quiz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Timer;
import java.util.TimerTask;
import javax.swing.JOptionPane;

/**
 *
 * @author ssuyuanhuang
 */
public class Million extends javax.swing.JFrame {
Connection conn =new DBConnection().connect();
String userAnswer,bestAnswer,myNickname;
int question_no=0,sqlQuestion_id=0,myUserid=0,myMoney=0,sec=20;
Timer timer=new Timer();
TimerTask task=new TimerTask()
{
    public void run()
    {
        jSec.setText("剩餘秒數："+sec);
        if(sec==0){
            String sql="insert into anshistory(qus_id,his_million,his_qusno,user_id,his_ans) values('"+sqlQuestion_id+"','1','"+question_no+"','"+myUserid+"','((逾時作答))')";
            System.out.println(sql);
                try{
                    PreparedStatement ps=conn.prepareStatement(sql);
                    if(ps.execute()){
                        JOptionPane.showMessageDialog(null,"紀錄失敗");
                    }else{
                        String sql2="select * from award where award_id="+question_no;
                        try{
                            PreparedStatement ps2=conn.prepareStatement(sql2);
                            ResultSet rs2=ps2.executeQuery();
                            System.out.println("yes");
                            if(rs2.next()){
                                int Award=rs2.getInt("award_money")/2;//答題失敗累計獎金折半
                                myMoney=myMoney+Award;
                                JOptionPane.showMessageDialog(null,"挑戰失敗，獲得獎金"+Award+"元","真可惜",JOptionPane.ERROR_MESSAGE);
                                SaveMoneyInformation(Award);//儲存累計獎金
                                MainMenu mm= new MainMenu(myUserid);
                                mm.show();
                            }else{
                                JOptionPane.showMessageDialog(null,"無法取得獎金資訊");
                            }
                        }
                        catch (Exception e){
                            System.out.println("error"+e);
                        }
                        stoptimer();
                    }
                }
                catch (Exception e){
                    System.out.println("error"+e);
                }
            }
        sec--;
        }
    };
    /**
     * Creates new form Million
     */
        public Million(int userid,String nickname) {
            initComponents();
            jLabel1.setText("歡迎挑戰者："+nickname+"，加油加油加油！");
            myUserid=userid;
            myNickname=nickname;
            nextquestion();
            timer.scheduleAtFixedRate(task, sec, 1000);
        }

    private Million() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jSeparator1 = new javax.swing.JSeparator();
        jScrollPane1 = new javax.swing.JScrollPane();
        jTextArea1 = new javax.swing.JTextArea();
        jLabel3 = new javax.swing.JLabel();
        jButton4 = new javax.swing.JButton();
        jSec = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setMaximumSize(new java.awt.Dimension(612, 512));
        setMinimumSize(new java.awt.Dimension(612, 512));
        setPreferredSize(new java.awt.Dimension(612, 512));
        setResizable(false);
        setSize(new java.awt.Dimension(612, 512));

        jLabel1.setFont(new java.awt.Font("微軟正黑體", 0, 18)); // NOI18N
        jLabel1.setText("歡迎");

        jLabel2.setFont(new java.awt.Font("微軟正黑體", 0, 36)); // NOI18N
        jLabel2.setText("題號");

        jButton1.setText("A");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("B");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("C");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jTextArea1.setColumns(20);
        jTextArea1.setFont(new java.awt.Font("華康中黑體", 0, 36)); // NOI18N
        jTextArea1.setRows(5);
        jTextArea1.setEnabled(false);
        jTextArea1.setSelectionColor(new java.awt.Color(0, 0, 0));
        jScrollPane1.setViewportView(jTextArea1);

        jLabel3.setFont(new java.awt.Font("微軟正黑體", 0, 18)); // NOI18N
        jLabel3.setText("0元");

        jButton4.setText("逃離戰場");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jSec.setFont(new java.awt.Font("微軟正黑體", 0, 36)); // NOI18N
        jSec.setText("剩餘時間");

        jLabel4.setText("累計獎金：");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jSeparator1)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(43, 43, 43)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 125, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(47, 47, 47)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 126, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jLabel4)
                            .addComponent(jButton4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel1)
                            .addComponent(jLabel2))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jSec)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(jSec))
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 215, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel3)
                        .addGap(18, 18, 18)
                        .addComponent(jButton4))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jButton3, javax.swing.GroupLayout.PREFERRED_SIZE, 90, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
        // TODO add your handling code here:
        checkAnswer(jButton1.getText(),question_no);
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
        // TODO add your handling code here:
        checkAnswer(jButton2.getText(),question_no);
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
        // TODO add your handling code here:
        checkAnswer(jButton3.getText(),question_no);
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
        // TODO add your handling code here:
        int ExitCheck=JOptionPane.showConfirmDialog(null,"你確定要逃離戰場嗎？(會記錄下來，很丟臉的喔!!)","Are you sure?",JOptionPane.YES_NO_OPTION,JOptionPane.WARNING_MESSAGE);
        if(ExitCheck==0){            
            String sql="insert into anshistory(qus_id,his_million,his_qusno,user_id,his_ans,his_pass) values('"+sqlQuestion_id+"','1','"+question_no+"','"+myUserid+"','"+"((逃離戰場))"+"','0')";//儲存答題紀錄
            try{
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.execute();
            }
            catch (Exception e){
                System.out.println("error"+e);
            }
            stoptimer();
            MainMenu mm= new MainMenu(myUserid);
            mm.show();
        }
    }//GEN-LAST:event_jButton4ActionPerformed
 
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Million.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Million.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Million.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Million.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Million().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel jSec;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JTextArea jTextArea1;
    // End of variables declaration//GEN-END:variables

    private void nextquestion() {
        String sql;
        if(userAnswer != null && !userAnswer.equals("")){
            sql="select * from question where qus_id NOT IN("+userAnswer+") ORDER BY RAND() LIMIT 0,1";
            System.out.println(sql);
        }else{
            sql="select * from question ORDER BY RAND() LIMIT 0,1"; 
        }
        try{
           PreparedStatement ps=conn.prepareStatement(sql);
           ResultSet rs=ps.executeQuery();
           if(rs.next()){
                question_no++;
                jLabel2.setText("第"+question_no+"題");
                sqlQuestion_id=rs.getInt("qus_id");
                String sql_id = Integer.toString(sqlQuestion_id);
                if(userAnswer != null && !userAnswer.equals("")){
                    userAnswer=userAnswer+", '"+sql_id+"'";
                 }else{
                    userAnswer="'"+sql_id+"'";
                 }
                String subject=rs.getString("qus_subject");
                ArrayList<String> Answer = new ArrayList<>();
                Answer.add(rs.getString("qus_ansA"));
                Answer.add(rs.getString("qus_ansB"));
                Answer.add(rs.getString("qus_ansC"));
                Collections.shuffle(Answer);
                bestAnswer=rs.getString("qus_bestAns");
                jButton1.setText(Answer.get(0));
                jButton2.setText(Answer.get(1));
                jButton3.setText(Answer.get(2));
                jTextArea1.setLineWrap(true);
                jTextArea1.setText(subject);
                sec=20;//設定20秒回答問題
           }else{
               JOptionPane.showMessageDialog(null,"題目取得失敗");
           }
        }
        catch (Exception e){
            System.out.println("error"+e);
        }
    }

    private void checkAnswer(String ThisAnswer,int question_nob) {//檢查點選的答案是否正確
            if(bestAnswer.equals(ThisAnswer)){
            String sql="insert into anshistory(qus_id,his_million,his_qusno,user_id,his_ans,his_pass) values('"+sqlQuestion_id+"','1','"+question_nob+"','"+myUserid+"','"+ThisAnswer+"','1')";//儲存答題紀錄
            System.out.println(sql);
                try{
                  PreparedStatement ps=conn.prepareStatement(sql);
                   if(ps.execute()){
                       JOptionPane.showMessageDialog(null,"紀錄失敗");
                       
                   }else{

                        int qu=question_no+1;
                        String sql2="select * from award where award_id="+qu;//查詢目前累計獎金
                        try{
                           PreparedStatement ps2=conn.prepareStatement(sql2);
                           ResultSet rs2=ps2.executeQuery();
                           System.out.println("yes");
                           if(rs2.next()){
                                int Award=rs2.getInt("award_money");
                                jLabel3.setText(Award+"元");
                                if(question_no==15){//最多15題
                                   JOptionPane.showMessageDialog(null,"恭喜答對15題，您獲得"+Award+"元獎金！","太棒了",JOptionPane.INFORMATION_MESSAGE);
                                   SaveMoneyInformation(Award);//儲存累計獎金
                                   stoptimer();
                                    myMoney=myMoney+Award;
                                    MainMenu mm= new MainMenu(myUserid);
                                    mm.show();
                                }else{
                                   JOptionPane.showMessageDialog(null,"恭喜答對，下一題！","太棒了",JOptionPane.INFORMATION_MESSAGE);
                                   nextquestion(); 
                                }
                                   }else{
                                       JOptionPane.showMessageDialog(null,"無法取得獎金資訊");
                                   }
                                }
                                catch (Exception e){
                                    System.out.println("error"+e);
                                }
                        
                   }
                }
                catch (Exception e){
                    System.out.println("error"+e);
                }
        }else{
            String sql="insert into anshistory(qus_id,his_million,his_qusno,user_id,his_ans) values('"+sqlQuestion_id+"','1','"+question_no+"','"+myUserid+"','"+ThisAnswer+"')";
            System.out.println(sql);
                try{
                  PreparedStatement ps=conn.prepareStatement(sql);
                   if(ps.execute()){
                       JOptionPane.showMessageDialog(null,"紀錄失敗");
                   }else{
                       String sql2="select * from award where award_id="+question_nob;
                        try{
                           PreparedStatement ps2=conn.prepareStatement(sql2);
                           ResultSet rs2=ps2.executeQuery();
                           System.out.println("yes");
                           if(rs2.next()){
                                int Award=rs2.getInt("award_money")/2;//答題失敗累計獎金折半
                                myMoney=myMoney+Award;
                                JOptionPane.showMessageDialog(null,"挑戰失敗，獲得獎金"+Award+"元","真可惜",JOptionPane.ERROR_MESSAGE);
                                SaveMoneyInformation(Award);//儲存累計獎金
                                MainMenu mm= new MainMenu(myUserid);
                                mm.show();
                           }else{
                               JOptionPane.showMessageDialog(null,"無法取得獎金資訊");
                           }
                        }
                        catch (Exception e){
                            System.out.println("error"+e);
                        }
                       stoptimer();
                   }
                }
                catch (Exception e){
                    System.out.println("error"+e);
                }
        }
    }

    private void SaveMoneyInformation(int Award) {
            String sql="insert into moneyhistory(user_id,money_subject,money_inout,money_total) values('"+myUserid+"','1','1','"+Award+"')";
            System.out.println(sql);
                try{
                  PreparedStatement ps=conn.prepareStatement(sql);
                   if(ps.execute()){
                       System.out.println("金錢紀錄失敗");
                   }else{
                       String sql2="update user set user_money=user_money+'"+Award+"' where user_id='"+myUserid+"'";
                       PreparedStatement ps2=conn.prepareStatement(sql2);
                       ps2.execute();
                       System.out.println("金錢紀錄成功");
                   }
                }
                catch (Exception e){
                    System.out.println("error"+e);
                }
           
    }
    private void stoptimer() {
        timer.cancel();
        dispose();
    }
}