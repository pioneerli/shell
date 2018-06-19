case  "$1"  in                      
  start)                                            
        echo  "启动服务.. .." ;;                            
  stop)
        echo  "停止服务.. .." ;;                           
  restart)
        $0  stop                                          
        $0  start                                         
        ;;
  *)
        echo  $"用法: $0 {start|stop|restart}"           
        exit 1 
esac

