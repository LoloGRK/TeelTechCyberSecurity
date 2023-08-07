# Exercise 26

  The following [email](https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_025/email_002.eml) was received and seemed suspicious.
  
  Actions:
  
  - Ask the receiver to give us access to the account
  - Check email rules

    <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/e83b5b0b7a9429e58c72167f2fb0e9ad2b4e971e/exercises_026/images/rules_menu_001.png" width="375">
    
    Full rule list
    
    <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/5755876ca7e252ff05c53580794d7ac8ff9d7aa8/exercises_026/images/rules_menu_002.png" width="100%">
    
<details>
<summary>Conclusions</summary>
  
1. Rule *translation*
   1. If the message is from the same user who the account belongs to, stop processing it:
   
      This is useful if the user is trying to check some strange behaviour in email, don't do anything.
   
   2. If the message is from *johnbroekman@me.com*, don't do anything:

      Maybe this is one of the scammer's addresses which might be used for testing purposes.
   
   3. If the source address contains one of the following words *yahoo, hotmail, gmail.com, ibizaevolutionservices.com, libero.it, novellaconstrucciones.com, admintanit.com, sbgibiza.com, honusan.com*, mark the messeage as read and forward the message to *hassani777@yahoo.com and erinzhangxl@yahoo.com* and stop processing more rules.

      This rule states that the scammer knows the target's customers and who may pay some bill. This way, any email sent from any of this accounts will be set as read, kept and forwarded to the scammer to process it.
      
      Now the scammer has the links of the organization to his providers:
      
      - ibizaevolutionservices.com: Administrative and Support Service Activities
      - novellaconstrucciones.com: Construction company
      - admintanit.com: Accountant services
      - sbgibiza.com: Accountant services
      - honusan.com: Construction company
      
      This way, the scammer can control wether any message from their main providers is received and it will be marked as read and forwarded to the scammer to check if it's valuable.
      
   4. If source address contains *equipo, inusuao, actividad, team, support, security, service, email, alert, microsoft, account, postmaster, live, windows, msn, update, deliver* or many other words, delete the message, mark it as read and stop processing more rules. 
      
      This way, if the users asks for support to the provider or even Microsoft, the message will be deleted, making sure the scammer, that he will not receive any help.
  
The hacker got access to the user's account and had full control over it.
