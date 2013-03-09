.class Lcom/htc/omadm/util/FileLooperThread;
.super Ljava/lang/Thread;
.source "DMLog.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 275
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 277
    new-instance v0, Lcom/htc/omadm/util/FileLooperThread$1;

    invoke-direct {v0, p0}, Lcom/htc/omadm/util/FileLooperThread$1;-><init>(Lcom/htc/omadm/util/FileLooperThread;)V

    sput-object v0, Lcom/htc/omadm/util/DMLog;->mHandler:Landroid/os/Handler;

    .line 284
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 285
    return-void
.end method

.method public write2File(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 290
    .local v0, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/htc/omadm/util/DMConfig;->GetMiscDir()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, myDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 293
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 296
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    new-instance v1, Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dmlog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v0           #fw:Ljava/io/FileWriter;
    .local v1, fw:Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 306
    .end local v1           #fw:Ljava/io/FileWriter;
    .end local v2           #myDir:Ljava/io/File;
    .restart local v0       #fw:Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    .restart local v2       #myDir:Ljava/io/File;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v0       #fw:Ljava/io/FileWriter;
    goto :goto_0
.end method
