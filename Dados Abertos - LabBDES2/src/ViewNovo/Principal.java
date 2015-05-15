/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ViewNovo;

import java.awt.*;
import java.awt.geom.RoundRectangle2D;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.Border;

/**
 *
 * @author Gabs
 */
public class Principal extends javax.swing.JFrame {

    /**
     * Creates new form Principal
     */
    public Principal() {
        initComponents();
        
        
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btGroup = new javax.swing.ButtonGroup();
        pnlPrincipal = new javax.swing.JPanel();
        pnlMenu = new RoundedPanel();
        pnlLabelMenuConsultas = new RoundedPanel();
        lblConsultas = new javax.swing.JLabel();
        pnlBordaBotoes = new javax.swing.JPanel();
        btConsultaSimples = new javax.swing.JButton();
        btConsultaAvancada = new javax.swing.JButton();
        pnlHeader = new RoundedPanel();
        pnlCardLayout = new RoundedPanel();
        pnlConsultaSimples = new RoundedPanel();
        txtFieldConsultaSimples = new RoundJTextField(25);
        jRButtonNatureza = new javax.swing.JRadioButton();
        jRButtonPrograma = new javax.swing.JRadioButton();
        btPesquisar = new javax.swing.JButton();
        pnlConsultaAvancada = new RoundedPanel();
        lblItensObrigatorios = new javax.swing.JLabel();
        lblMunicipio = new javax.swing.JLabel();
        lblNatureza1 = new javax.swing.JLabel();
        lblNatureza2 = new javax.swing.JLabel();
        lblDataInicial = new javax.swing.JLabel();
        lblDataFinal = new javax.swing.JLabel();
        lblValorInicial = new javax.swing.JLabel();
        lblValorFinal = new javax.swing.JLabel();
        pnlResultadoConsultaSimples = new RoundedPanel();
        pnlResultadoConsultaAvancada = new RoundedPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Consultas Públicas");

        pnlPrincipal.setBackground(new java.awt.Color(153, 153, 153));
        pnlPrincipal.setMaximumSize(new java.awt.Dimension(2147483647, 2147483647));
        pnlPrincipal.setPreferredSize(new java.awt.Dimension(687, 419));

        pnlMenu.setBackground(new java.awt.Color(204, 204, 204));
        pnlMenu.setForeground(new java.awt.Color(204, 204, 204));
        pnlMenu.setName("pnlMenu"); // NOI18N

        pnlLabelMenuConsultas.setBackground(new java.awt.Color(102, 102, 102));
        pnlLabelMenuConsultas.setForeground(new java.awt.Color(102, 102, 102));

        lblConsultas.setBackground(new java.awt.Color(255, 255, 255));
        lblConsultas.setFont(new java.awt.Font("Verdana", 1, 18)); // NOI18N
        lblConsultas.setForeground(new java.awt.Color(255, 255, 255));
        lblConsultas.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lblConsultas.setLabelFor(pnlMenu);
        lblConsultas.setText("Consultas");

        javax.swing.GroupLayout pnlLabelMenuConsultasLayout = new javax.swing.GroupLayout(pnlLabelMenuConsultas);
        pnlLabelMenuConsultas.setLayout(pnlLabelMenuConsultasLayout);
        pnlLabelMenuConsultasLayout.setHorizontalGroup(
            pnlLabelMenuConsultasLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlLabelMenuConsultasLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblConsultas, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        pnlLabelMenuConsultasLayout.setVerticalGroup(
            pnlLabelMenuConsultasLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlLabelMenuConsultasLayout.createSequentialGroup()
                .addComponent(lblConsultas, javax.swing.GroupLayout.PREFERRED_SIZE, 49, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
        );

        pnlBordaBotoes.setBackground(new java.awt.Color(204, 204, 204));
        pnlBordaBotoes.setBorder(javax.swing.BorderFactory.createTitledBorder(""));

        btConsultaSimples.setBackground(new java.awt.Color(0, 0, 51));
        btConsultaSimples.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btConsultaSimples.setForeground(new java.awt.Color(255, 255, 255));
        btConsultaSimples.setText("Consulta Simples");
        btConsultaSimples.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btConsultaSimplesActionPerformed(evt);
            }
        });

        btConsultaAvancada.setBackground(new java.awt.Color(0, 102, 153));
        btConsultaAvancada.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btConsultaAvancada.setForeground(new java.awt.Color(255, 255, 255));
        btConsultaAvancada.setText("Consulta Avançada");
        btConsultaAvancada.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                btConsultaAvancadaMouseClicked(evt);
            }
        });
        btConsultaAvancada.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btConsultaAvancadaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnlBordaBotoesLayout = new javax.swing.GroupLayout(pnlBordaBotoes);
        pnlBordaBotoes.setLayout(pnlBordaBotoesLayout);
        pnlBordaBotoesLayout.setHorizontalGroup(
            pnlBordaBotoesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlBordaBotoesLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlBordaBotoesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btConsultaSimples, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btConsultaAvancada, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        pnlBordaBotoesLayout.setVerticalGroup(
            pnlBordaBotoesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlBordaBotoesLayout.createSequentialGroup()
                .addGap(25, 25, 25)
                .addComponent(btConsultaSimples, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(btConsultaAvancada, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout pnlMenuLayout = new javax.swing.GroupLayout(pnlMenu);
        pnlMenu.setLayout(pnlMenuLayout);
        pnlMenuLayout.setHorizontalGroup(
            pnlMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlMenuLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(pnlLabelMenuConsultas, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(pnlBordaBotoes, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        pnlMenuLayout.setVerticalGroup(
            pnlMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlMenuLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(pnlLabelMenuConsultas, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(pnlBordaBotoes, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pnlHeader.setBackground(new java.awt.Color(0, 102, 153));
        pnlHeader.setForeground(new java.awt.Color(0, 102, 153));

        javax.swing.GroupLayout pnlHeaderLayout = new javax.swing.GroupLayout(pnlHeader);
        pnlHeader.setLayout(pnlHeaderLayout);
        pnlHeaderLayout.setHorizontalGroup(
            pnlHeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        pnlHeaderLayout.setVerticalGroup(
            pnlHeaderLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 92, Short.MAX_VALUE)
        );

        pnlCardLayout.setBackground(new java.awt.Color(204, 204, 204));
        pnlCardLayout.setForeground(new java.awt.Color(204, 204, 204));
        pnlCardLayout.setLayout(new java.awt.CardLayout());

        pnlConsultaSimples.setBackground(new java.awt.Color(204, 204, 204));
        pnlConsultaSimples.setForeground(new java.awt.Color(204, 204, 204));

        txtFieldConsultaSimples.setForeground(new java.awt.Color(153, 153, 153));
        txtFieldConsultaSimples.setText("Pesquise...");
        txtFieldConsultaSimples.setCaretColor(new java.awt.Color(102, 102, 102));
        txtFieldConsultaSimples.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                txtFieldConsultaSimplesFocusGained(evt);
            }
        });

        btGroup.add(jRButtonNatureza);
        jRButtonNatureza.setText("Natureza");
        jRButtonNatureza.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRButtonNaturezaActionPerformed(evt);
            }
        });

        btGroup.add(jRButtonPrograma);
        jRButtonPrograma.setText("Programa");
        jRButtonPrograma.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRButtonProgramaActionPerformed(evt);
            }
        });

        btPesquisar.setBackground(new java.awt.Color(0, 102, 153));
        btPesquisar.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        btPesquisar.setForeground(new java.awt.Color(255, 255, 255));
        btPesquisar.setText("Pesquisar");
        btPesquisar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btPesquisarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout pnlConsultaSimplesLayout = new javax.swing.GroupLayout(pnlConsultaSimples);
        pnlConsultaSimples.setLayout(pnlConsultaSimplesLayout);
        pnlConsultaSimplesLayout.setHorizontalGroup(
            pnlConsultaSimplesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlConsultaSimplesLayout.createSequentialGroup()
                .addContainerGap(57, Short.MAX_VALUE)
                .addGroup(pnlConsultaSimplesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, pnlConsultaSimplesLayout.createSequentialGroup()
                        .addComponent(jRButtonNatureza)
                        .addGap(28, 28, 28)
                        .addComponent(jRButtonPrograma)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 209, Short.MAX_VALUE)
                        .addComponent(btPesquisar))
                    .addComponent(txtFieldConsultaSimples))
                .addContainerGap(57, Short.MAX_VALUE))
        );
        pnlConsultaSimplesLayout.setVerticalGroup(
            pnlConsultaSimplesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlConsultaSimplesLayout.createSequentialGroup()
                .addContainerGap(77, Short.MAX_VALUE)
                .addComponent(txtFieldConsultaSimples, javax.swing.GroupLayout.PREFERRED_SIZE, 42, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(pnlConsultaSimplesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(pnlConsultaSimplesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jRButtonNatureza)
                        .addComponent(jRButtonPrograma))
                    .addComponent(btPesquisar, javax.swing.GroupLayout.PREFERRED_SIZE, 39, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(80, Short.MAX_VALUE))
        );

        pnlCardLayout.add(pnlConsultaSimples, "pnlConsultaSimples");

        pnlConsultaAvancada.setBackground(new java.awt.Color(204, 204, 204));
        pnlConsultaAvancada.setForeground(new java.awt.Color(204, 204, 204));

        lblItensObrigatorios.setText("* Itens Obrigatórios");

        lblMunicipio.setText("Município*:");

        lblNatureza1.setText("Natureza 1*:");

        lblNatureza2.setText("Natureza 2:");

        lblDataInicial.setText("Data Inicial:");

        lblDataFinal.setText("Data Final:");

        lblValorInicial.setText("Valor Inicial:");

        lblValorFinal.setText("Valor Final:");

        javax.swing.GroupLayout pnlConsultaAvancadaLayout = new javax.swing.GroupLayout(pnlConsultaAvancada);
        pnlConsultaAvancada.setLayout(pnlConsultaAvancadaLayout);
        pnlConsultaAvancadaLayout.setHorizontalGroup(
            pnlConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlConsultaAvancadaLayout.createSequentialGroup()
                .addGap(73, 73, 73)
                .addGroup(pnlConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblItensObrigatorios)
                    .addGroup(pnlConsultaAvancadaLayout.createSequentialGroup()
                        .addComponent(lblNatureza1)
                        .addGap(178, 178, 178)
                        .addComponent(lblNatureza2))
                    .addComponent(lblMunicipio)
                    .addGroup(pnlConsultaAvancadaLayout.createSequentialGroup()
                        .addGroup(pnlConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lblDataInicial)
                            .addComponent(lblValorInicial))
                        .addGap(183, 183, 183)
                        .addGroup(pnlConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lblValorFinal)
                            .addComponent(lblDataFinal))))
                .addGap(207, 207, 207))
        );
        pnlConsultaAvancadaLayout.setVerticalGroup(
            pnlConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlConsultaAvancadaLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(lblItensObrigatorios)
                .addGap(31, 31, 31)
                .addComponent(lblMunicipio)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 17, Short.MAX_VALUE)
                .addGroup(pnlConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblNatureza1)
                    .addComponent(lblNatureza2))
                .addGap(18, 18, 18)
                .addGroup(pnlConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblDataInicial)
                    .addComponent(lblDataFinal))
                .addGap(18, 18, 18)
                .addGroup(pnlConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblValorInicial)
                    .addComponent(lblValorFinal))
                .addContainerGap(84, Short.MAX_VALUE))
        );

        pnlCardLayout.add(pnlConsultaAvancada, "pnlConsultaAvancada");

        pnlResultadoConsultaSimples.setBackground(new java.awt.Color(204, 204, 204));
        pnlResultadoConsultaSimples.setForeground(new java.awt.Color(204, 204, 204));

        javax.swing.GroupLayout pnlResultadoConsultaSimplesLayout = new javax.swing.GroupLayout(pnlResultadoConsultaSimples);
        pnlResultadoConsultaSimples.setLayout(pnlResultadoConsultaSimplesLayout);
        pnlResultadoConsultaSimplesLayout.setHorizontalGroup(
            pnlResultadoConsultaSimplesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 578, Short.MAX_VALUE)
        );
        pnlResultadoConsultaSimplesLayout.setVerticalGroup(
            pnlResultadoConsultaSimplesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 249, Short.MAX_VALUE)
        );

        pnlCardLayout.add(pnlResultadoConsultaSimples, "pnlResultadoConsultaSimples");

        pnlResultadoConsultaAvancada.setBackground(new java.awt.Color(204, 204, 204));
        pnlResultadoConsultaAvancada.setForeground(new java.awt.Color(204, 204, 204));

        javax.swing.GroupLayout pnlResultadoConsultaAvancadaLayout = new javax.swing.GroupLayout(pnlResultadoConsultaAvancada);
        pnlResultadoConsultaAvancada.setLayout(pnlResultadoConsultaAvancadaLayout);
        pnlResultadoConsultaAvancadaLayout.setHorizontalGroup(
            pnlResultadoConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 578, Short.MAX_VALUE)
        );
        pnlResultadoConsultaAvancadaLayout.setVerticalGroup(
            pnlResultadoConsultaAvancadaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 249, Short.MAX_VALUE)
        );

        pnlCardLayout.add(pnlResultadoConsultaAvancada, "pnlResultadoConsultaAvancada");

        javax.swing.GroupLayout pnlPrincipalLayout = new javax.swing.GroupLayout(pnlPrincipal);
        pnlPrincipal.setLayout(pnlPrincipalLayout);
        pnlPrincipalLayout.setHorizontalGroup(
            pnlPrincipalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlPrincipalLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(pnlPrincipalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(pnlHeader, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(pnlPrincipalLayout.createSequentialGroup()
                        .addComponent(pnlMenu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(pnlCardLayout, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                .addContainerGap())
        );
        pnlPrincipalLayout.setVerticalGroup(
            pnlPrincipalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(pnlPrincipalLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(pnlHeader, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(pnlPrincipalLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(pnlMenu, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(pnlCardLayout, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(49, 49, 49))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pnlPrincipal, javax.swing.GroupLayout.DEFAULT_SIZE, 793, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(pnlPrincipal, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 412, Short.MAX_VALUE)
        );

        pnlPrincipal.getAccessibleContext().setAccessibleName("");

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btConsultaSimplesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btConsultaSimplesActionPerformed
        CardLayout cl = (CardLayout)(pnlCardLayout.getLayout());
        
        cl.show(pnlCardLayout, "pnlConsultaSimples"); 
        
        btConsultaSimples.setBackground(new java.awt.Color(0, 0, 51));
        btConsultaAvancada.setBackground(new java.awt.Color(0, 102, 153));
        
        setTitle("Consulta Simples");
        
    }//GEN-LAST:event_btConsultaSimplesActionPerformed

    private void btConsultaAvancadaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btConsultaAvancadaActionPerformed
        CardLayout c2 = (CardLayout)(pnlCardLayout.getLayout());
        
        c2.show(pnlCardLayout, "pnlConsultaAvancada"); 
        
         btConsultaAvancada.setBackground(new java.awt.Color(0, 0, 51));
         btConsultaSimples.setBackground(new java.awt.Color(0, 102, 153));
         
         setTitle("Consulta Avançada");
    }//GEN-LAST:event_btConsultaAvancadaActionPerformed

    private void btConsultaAvancadaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_btConsultaAvancadaMouseClicked
        // TODO add your handling code here:
    }//GEN-LAST:event_btConsultaAvancadaMouseClicked

    private void txtFieldConsultaSimplesFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_txtFieldConsultaSimplesFocusGained
         if (txtFieldConsultaSimples.getText(). equals("Pesquise...") || txtFieldConsultaSimples.getText(). equals("Pesquise por Natureza")||txtFieldConsultaSimples.getText(). equals("Pesquise por Programa")) {
            txtFieldConsultaSimples.setText("");
        }
    }//GEN-LAST:event_txtFieldConsultaSimplesFocusGained

    private void jRButtonNaturezaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRButtonNaturezaActionPerformed
       if (txtFieldConsultaSimples.getText(). equals("Pesquise...") ||txtFieldConsultaSimples.getText(). equals("Pesquise por Programa")|| txtFieldConsultaSimples.getText(). equals("")) {
            txtFieldConsultaSimples.setText("Pesquise por Natureza");
        }
    }//GEN-LAST:event_jRButtonNaturezaActionPerformed

    private void jRButtonProgramaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRButtonProgramaActionPerformed
        if (txtFieldConsultaSimples.getText(). equals("Pesquise...") ||txtFieldConsultaSimples.getText(). equals("Pesquise por Natureza")|| txtFieldConsultaSimples.getText(). equals("")) {
            txtFieldConsultaSimples.setText("Pesquise por Programa");
        }
    }//GEN-LAST:event_jRButtonProgramaActionPerformed

    private void btPesquisarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btPesquisarActionPerformed
         CardLayout c3 = (CardLayout)(pnlCardLayout.getLayout());
        
        c3.show(pnlCardLayout, "pnlResultadoConsultaSimples"); 
         
         setTitle("Resultado Consulta Simples");
    }//GEN-LAST:event_btPesquisarActionPerformed

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
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Principal.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Principal().setVisible(true);
            }
        });
    }
    
    public class RoundedPanel extends JPanel {

    private static final long serialVersionUID = 1L;
    /** Stroke size. it is recommended to set it to 1 for better view */
    protected int strokeSize = 1;
    /** Color of shadow */
    protected Color shadowColor = Color.black;
    /** Sets if it drops shadow */
    protected boolean shady = true;
    /** Sets if it has an High Quality view */
    protected boolean highQuality = true;
    /** Double values for Horizontal and Vertical radius of corner arcs */
    protected Dimension arcs = new Dimension(10, 10);
    /** Distance between shadow border and opaque panel border */
    protected int shadowGap = 4;
    /** The offset of shadow. */
    protected int shadowOffset = 4;
    /** The transparency value of shadow. ( 0 - 255) */
    protected int shadowAlpha = 100;

    protected int idCounter = 0;

    // FOLLOWING CODES GOES HERE

    public RoundedPanel() {
        super();
        setOpaque(false);
    }

    protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        int width = getWidth();
        int height = getHeight();
        int shadowGap = this.shadowGap;
        Color shadowColorA = new Color(shadowColor.getRed(),
                shadowColor.getGreen(), shadowColor.getBlue(), shadowAlpha);
        Graphics2D graphics = (Graphics2D) g;

        // Sets antialiasing if HQ.
        if (highQuality) {
            graphics.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
                    RenderingHints.VALUE_ANTIALIAS_ON);
        }

        // Draws shadow borders if any.
        if (shady) {
            graphics.setColor(shadowColorA);
            graphics.fillRoundRect(shadowOffset,// X position
                    shadowOffset,// Y position
                    width - strokeSize - shadowOffset, // width
                    height - strokeSize - shadowOffset, // height
                    arcs.width, arcs.height);// arc Dimension
        } else {
            shadowGap = 1;
        }

        // Draws the rounded opaque panel with borders.
        graphics.setColor(getBackground());
        graphics.fillRoundRect(0, 0, width - shadowGap, height - shadowGap,
                arcs.width, arcs.height);
        graphics.setColor(getForeground());
        graphics.setStroke(new BasicStroke(strokeSize));
        graphics.drawRoundRect(0, 0, width - shadowGap, height - shadowGap,
                arcs.width, arcs.height);

        // Sets strokes to default, is better.
        graphics.setStroke(new BasicStroke());
    }
}
    
     public class RoundJTextField extends JTextField {
    private Shape shape;
    public RoundJTextField(int size) {
        super(size);
        setOpaque(false); // As suggested by @AVD in comment.
    }
    protected void paintComponent(Graphics g) {
         g.setColor(getBackground());
         g.fillRoundRect(0, 0, getWidth()-1, getHeight()-1, 15, 15);
         super.paintComponent(g);
    }
    protected void paintBorder(Graphics g) {
         g.setColor(getForeground());
         g.drawRoundRect(0, 0, getWidth()-1, getHeight()-1, 15, 15);
    }
    public boolean contains(int x, int y) {
         if (shape == null || !shape.getBounds().equals(getBounds())) {
             shape = new RoundRectangle2D.Float(0, 0, getWidth()-1, getHeight()-1, 15, 15);
         }
         return shape.contains(x, y);
    }
}
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btConsultaAvancada;
    private javax.swing.JButton btConsultaSimples;
    private javax.swing.ButtonGroup btGroup;
    private javax.swing.JButton btPesquisar;
    private javax.swing.JRadioButton jRButtonNatureza;
    private javax.swing.JRadioButton jRButtonPrograma;
    private javax.swing.JLabel lblConsultas;
    private javax.swing.JLabel lblDataFinal;
    private javax.swing.JLabel lblDataInicial;
    private javax.swing.JLabel lblItensObrigatorios;
    private javax.swing.JLabel lblMunicipio;
    private javax.swing.JLabel lblNatureza1;
    private javax.swing.JLabel lblNatureza2;
    private javax.swing.JLabel lblValorFinal;
    private javax.swing.JLabel lblValorInicial;
    private javax.swing.JPanel pnlBordaBotoes;
    private javax.swing.JPanel pnlCardLayout;
    private javax.swing.JPanel pnlConsultaAvancada;
    private javax.swing.JPanel pnlConsultaSimples;
    private javax.swing.JPanel pnlHeader;
    private javax.swing.JPanel pnlLabelMenuConsultas;
    private javax.swing.JPanel pnlMenu;
    private javax.swing.JPanel pnlPrincipal;
    private javax.swing.JPanel pnlResultadoConsultaAvancada;
    private javax.swing.JPanel pnlResultadoConsultaSimples;
    private javax.swing.JTextField txtFieldConsultaSimples;
    // End of variables declaration//GEN-END:variables
}
