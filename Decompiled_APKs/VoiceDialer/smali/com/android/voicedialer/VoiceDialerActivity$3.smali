.class Lcom/android/voicedialer/VoiceDialerActivity$3;
.super Ljava/lang/Thread;
.source "VoiceDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity;->listenForCommand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1093
    invoke-static {}, Lcom/android/voicedialer/VoiceDialerActivity;->access$3200()Lcom/android/voicedialer/CommandRecognizerEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2900(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const-string v4, "microphone"

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$3000(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$3100(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mSampleRate:I
    invoke-static {v4}, Lcom/android/voicedialer/VoiceDialerActivity;->access$2400(Lcom/android/voicedialer/VoiceDialerActivity;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->recognize(Lcom/android/voicedialer/RecognizerClient;Landroid/app/Activity;Ljava/io/File;I)V

    .line 1097
    return-void
.end method
