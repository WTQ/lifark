<?php
/**
 * 锟斤拷时锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷
 * ============================================================================
 * api说锟斤拷锟斤拷
 * init(),锟斤拷始锟斤拷锟斤拷锟斤拷默锟较革拷一些锟斤拷锟斤拷值锟斤拷锟斤拷cmdno,date锟饺★拷
 * getGateURL()/setGateURL(),锟斤拷取/锟斤拷锟斤拷锟斤拷诘锟街?锟斤拷锟斤拷锟斤拷锟街?
 * getKey()/setKey(),锟斤拷取/锟斤拷锟斤拷锟斤拷钥
 * getParameter()/setParameter(),锟斤拷取/锟斤拷锟矫诧拷锟斤拷值
 * getAllParameters(),锟斤拷取锟斤拷锟叫诧拷锟斤拷
 * getRequestURL(),锟斤拷取锟斤拷锟斤拷锟斤拷锟斤拷锟斤拷URL
 * doSend(),锟截讹拷锟津到财革拷通支锟斤拷
 * getDebugInfo(),锟斤拷取debug锟斤拷息
 * 
 * ============================================================================
 *
 */

require ("RequestHandler.class.php");
class PayRequestHandler extends RequestHandler {
	
	function __construct() {
		$this->PayRequestHandler();
	}
	
	function PayRequestHandler() {
		//默锟斤拷支锟斤拷锟斤拷氐锟街?
		$this->setGateURL("https://www.tenpay.com/cgi-bin/v1.0/pay_gate.cgi");	
	}
	
	/**
	*@Override
	*锟斤拷始锟斤拷锟斤拷锟斤拷默锟较革拷一些锟斤拷锟斤拷值锟斤拷锟斤拷cmdno,date锟饺★拷
	*/
	function init() {
		//锟斤拷锟斤拷锟斤拷锟?
		$this->setParameter("cmdno", "1");
		
		//锟斤拷锟斤拷
		$this->setParameter("date",  date("Ymd"));
		
		//锟教伙拷锟斤拷
		$this->setParameter("bargainor_id", "");
		
		//锟狡革拷通锟斤拷锟阶碉拷锟斤拷
		$this->setParameter("transaction_id", "");
		
		//锟教家讹拷锟斤拷锟斤拷
		$this->setParameter("sp_billno", "");
		
		//锟斤拷品锟桔革拷锟皆凤拷为锟斤拷位
		$this->setParameter("total_fee", "");
		
		//锟斤拷锟斤拷锟斤拷锟斤拷
		$this->setParameter("fee_type",  "1");
		
		//锟斤拷锟斤拷url
		$this->setParameter("return_url",  "");
		
		//锟皆讹拷锟斤拷锟斤拷锟?
		$this->setParameter("attach",  "");
		
		//锟矫伙拷ip
		$this->setParameter("spbill_create_ip",  "");
		
		//锟斤拷品锟斤拷锟?
		$this->setParameter("desc",  "");
		
		//锟斤拷锟叫憋拷锟斤拷
		$this->setParameter("bank_type",  "0");
		
		//锟街凤拷锟斤拷锟?
		$this->setParameter("cs",  "gbk");
		
		//摘要
		$this->setParameter("sign",  "");
		
	}
	
	/**
	*@Override
	*锟斤拷锟斤拷签锟斤拷
	*/
	function createSign() {
		$cmdno = $this->getParameter("cmdno");
		$date = $this->getParameter("date");
		$bargainor_id = $this->getParameter("bargainor_id");
		$transaction_id = $this->getParameter("transaction_id");
		$sp_billno = $this->getParameter("sp_billno");
		$total_fee = $this->getParameter("total_fee");
		$fee_type = $this->getParameter("fee_type");
		$return_url = $this->getParameter("return_url");
		$attach = $this->getParameter("attach");
		$spbill_create_ip = $this->getParameter("spbill_create_ip");
		$key = $this->getKey();
		
		$signPars = "cmdno=" . $cmdno . "&" .
				"date=" . $date . "&" .
				"bargainor_id=" . $bargainor_id . "&" .
				"transaction_id=" . $transaction_id . "&" .
				"sp_billno=" . $sp_billno . "&" .
				"total_fee=" . $total_fee . "&" .
				"fee_type=" . $fee_type . "&" .
				"return_url=" . $return_url . "&" .
				"attach=" . $attach . "&";
		
		if($spbill_create_ip != "") {
			$signPars .= "spbill_create_ip=" . $spbill_create_ip . "&";
		}
		
		$signPars .= "key=" . $key;
		
		$sign = strtolower(md5($signPars));
		
		$this->setParameter("sign", $sign);
		
		//debug锟斤拷息
		$this->_setDebugInfo($signPars . " => sign:" . $sign);
		
	}

}

?>