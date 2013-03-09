.class public Lcom/android/commands/monkey/MonkeySourceNetwork;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetwork$1;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    }
.end annotation


# static fields
.field private static final COMMAND_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final DONE:Ljava/lang/String; = "done"

.field public static final EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn; = null

.field public static final ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn; = null

.field private static final ERROR_STR:Ljava/lang/String; = "ERROR"

.field public static final MONKEY_NETWORK_VERSION:I = 0x2

.field public static final OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn; = null

.field private static final OK_STR:Ljava/lang/String; = "OK"

.field private static final QUIT:Ljava/lang/String; = "quit"

.field private static final TAG:Ljava/lang/String; = "MonkeyStub"

.field private static deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;


# instance fields
.field private clientSocket:Ljava/net/Socket;

.field private final commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

.field private input:Ljava/io/BufferedReader;

.field private output:Ljava/io/PrintWriter;

.field private serverSocket:Ljava/net/ServerSocket;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->OK:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    invoke-direct {v0, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(Z)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->ERROR:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    const-string v1, "Invalid Argument"

    invoke-direct {v0, v2, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;-><init>(ZLjava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->EARG:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "flip"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$FlipCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "touch"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TouchCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "trackball"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TrackballCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "key"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$KeyCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "sleep"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$SleepCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "wake"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$WakeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "tap"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TapCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "press"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$PressCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "type"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$TypeCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "listvar"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$ListVarCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getvar"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkVars$GetVarCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "listviews"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "queryview"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getrootview"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getviewswithtext"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "deferreturn"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferReturnCommand;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;-><init>(Lcom/android/commands/monkey/MonkeySourceNetwork$1;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    new-instance v0, Ljava/net/ServerSocket;

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->getKeyCode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;)Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
    .locals 0

    sput-object p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    return-object p0
.end method

.method private static commandLineSplit(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_0

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method private static getKeyCode(Ljava/lang/String;)I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEYCODE_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->wasSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->hasMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnError()V

    goto :goto_0
.end method

.method private static replaceQuotedChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\\\""

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private returnError()V
    .locals 2

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private returnError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "ERROR"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private returnOk()V
    .locals 2

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private returnOk(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private startServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->setup()V

    invoke-static {}, Lcom/android/commands/monkey/MonkeySourceNetwork;->wake()Z

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    return-void
.end method

.method private stopServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->clientSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    return-void
.end method

.method private translateCommand(Ljava/lang/String;)V
    .locals 6

    const-string v3, "MonkeyStub"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "translateCommand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandLineSplit(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetwork;->COMMAND_MAP:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    invoke-interface {v0, v1, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommand;->translateCommand(Ljava/util/List;Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueue;)Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/commands/monkey/MonkeySourceNetwork;->handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V

    :cond_0
    return-void
.end method

.method private static final wake()Z
    .locals 7

    const/4 v2, 0x1

    const-string v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "MonkeyStub"

    const-string v3, "Got remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .locals 7

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    if-nez v5, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->startServer()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->started:Z

    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->commandQueue:Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$CommandQueueImpl;->getNextQueuedEvent()Lcom/android/commands/monkey/MonkeyEvent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    return-object v2

    :catch_0
    move-exception v1

    const-string v5, "MonkeyStub"

    const-string v6, "Got IOException from server"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    goto :goto_1

    :cond_1
    :try_start_2
    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    if-eqz v5, :cond_2

    const-string v5, "MonkeyStub"

    const-string v6, "Waiting for event"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->waitForEvent()Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    move-result-object v3

    const/4 v5, 0x0

    sput-object v5, Lcom/android/commands/monkey/MonkeySourceNetwork;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;

    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;->handleReturn(Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;)V

    :cond_2
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceNetwork;->input:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v5, "MonkeyStub"

    const-string v6, "Connection dropped."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "done"

    :cond_3
    const-string v5, "done"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-eqz v5, :cond_4

    :try_start_3
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->stopServer()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v2, Lcom/android/commands/monkey/MonkeyNoopEvent;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeyNoopEvent;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v5, "MonkeyStub"

    const-string v6, "Exception: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    const-string v5, "MonkeyStub"

    const-string v6, "Got IOException shutting down!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v4

    goto :goto_1

    :cond_4
    const-string v5, "quit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "MonkeyStub"

    const-string v6, "Quit requested"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->returnOk()V

    move-object v2, v4

    goto :goto_1

    :cond_5
    const-string v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeySourceNetwork;->translateCommand(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method public setVerbose(I)V
    .locals 0

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
