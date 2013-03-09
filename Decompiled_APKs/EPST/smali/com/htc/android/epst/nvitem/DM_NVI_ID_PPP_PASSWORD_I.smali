.class public Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;
.super Lcom/htc/android/epst/nvitem/NvItemBase;
.source "DM_NVI_ID_PPP_PASSWORD_I.java"


# static fields
.field public static final NV_MAX_PPP_PASSWORD_LENGTH:I = 0x7f


# instance fields
.field private PASSWORD:Ljava/lang/String;

.field private PWD_LENGTH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/htc/android/epst/nvitem/NvItemBase;-><init>()V

    .line 8
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PWD_LENGTH:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PASSWORD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateCmdData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PASSWORD:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/android/epst/Utility;->ASCIIToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, ReverseName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PWD_LENGTH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->mCurrentCmdData:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->mCurrentCmdData:Ljava/lang/String;

    return-object v1
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PASSWORD:Ljava/lang/String;

    return-object v0
.end method

.method public getPwdLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PWD_LENGTH:Ljava/lang/String;

    return-object v0
.end method

.method public read()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 27
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PWD_LENGTH:Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PWD_LENGTH:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 30
    .local v1, length:I
    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    .line 31
    const/16 v1, 0x7f

    .line 34
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->mCmdToBeParsed:Ljava/lang/String;

    const/4 v3, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/android/epst/Utility;->StringToASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PASSWORD:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DM_NVI_ID_PPP_PASSWORD_I"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Utility.StringToASCII error.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PASSWORD:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setPwdLength(Ljava/lang/String;)V
    .locals 0
    .parameter "pwdLength"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/android/epst/nvitem/DM_NVI_ID_PPP_PASSWORD_I;->PWD_LENGTH:Ljava/lang/String;

    .line 16
    return-void
.end method
